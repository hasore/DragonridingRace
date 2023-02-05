--[[
Dragonriding Race
Thank your group at the end of a dungeon run!
]]--

local addonName, addon = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local DRR = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0", "AceConsole-3.0", "AceComm-3.0", "AceTimer-3.0");

-- CONFIGURATION
DRR.version = "0.3.3";
--DRR.version = "dev";
DRR.versionAlertSent = false

DRR.COMM_PREFIX = addonName;
DRR.COMM_CHANNEL = "GUILD";
DRR.CURRENT_PLAYER = UnitName("player");

local options = {
    name = addonName,
    desc = L["ADDON_DESCRIPTION"],
    handler = DRR,
    type = "group",
    args = {
        intro = {
            order = 1,
            type = "description",
            name = L["ADDON_DESCRIPTION"],
            cmdHidden = true
        },
        vers = {
            order = 2,
            type = "description",
            name = "|cffffd700    "..L["ADDON_VERSION"].."|r "..DRR.version,
            cmdHidden = true
        },
        desc = {
            order = 3,
            type = "description",
            name = "|cffffd700    "..L["ADDON_AUTHOR"].."|r Tzinn\n\n",
            cmdHidden = true
        },
    }
};
LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, options);
local AceConfigDialog = LibStub("AceConfigDialog-3.0");

-- DEFAULTS
local dbDefaults = {
    global = {
        options = {},
        pb = {},
        guildpb = {},
        races = {},
    }
};

function DRR:OnInitialize()
    -- init database
    DRR.db = LibStub("AceDB-3.0"):New("DRRDB", dbDefaults);

    -- init options
    DRR.optionsFrames = AceConfigDialog:AddToBlizOptions(addonName, L["ADDON_NAME"]);
end

function DRR:OnEnable()
    -- init commands
    DRR:RegisterChatCommand("drr", "OnSlashCommand");

    -- hook to events
    DRR:RegisterComm(DRR.COMM_PREFIX);
    DRR:RegisterEvent("QUEST_ACCEPTED", "OnQuestAccepted");
    DRR:RegisterEvent("QUEST_REMOVED", "OnQuestRemoved");
    DRR:RegisterEvent("CHAT_MSG_MONSTER_SAY", "OnMonsterSay");

    -- say hello
    DRR:Print(L["ADDON_MOTD"]);

    DRR:SendPing();
    DRR:SendAskPBS();
    DRR:SendAllPBs();
    DRR:CheckMyOwnPB();
    DRR:Cleanup();

    --DRR:OnMonsterSay("CHAT_MSG_MONSTER_SAY", "Your race time was 51.637 seconds. That was your best time yet!", "Bronze Timekeeper");
    --DRR:OnMonsterSay("CHAT_MSG_MONSTER_SAY", "Eure Zeit liegt bei 62,677 Sekunden. Eure persönliche Bestzeit für dieses Rennen liegt bei 53.632 Sekunden.", "Bronzezeithüterin");
end

function DRR:Cleanup()
    local count = table.getn(DRR.db.global.races);
    local start = count - 10;
    if start < 1 then
        return;
    end

    local keep = {};
    for i = start, count, 1 do
        local data =  DRR.db.global.races[i];
        table.insert(keep, data);
    end
    DRR.db.global.races = keep;
end

-- TODO: remove me in later version
-- This function is for people that downloaded the addon before the update with Guild Best Times,
-- it puts their scores in them.
function DRR:CheckMyOwnPB()
    table.foreach(DRR.db.global.pb, function(raceId, time)
        local race = DRR:GetRace(raceId);
        local raceTime = DRR.RaceTime:Create(race.id, time, race.raceType);
        DRR:TrySetGuildBest(raceTime);
    end);
end

function DRR:OnSlashCommand(input)
    if nil ~= input and "" ~= input then
        local command, nextposition = DRR:GetArgs(input, 1);
        if "ping" == command then
            DRR:SendPing();
        elseif "last" == command then
            local count = table.getn(DRR.db.global.races);
            local max = count - 10;
            if max < 1 then
                max = 1;
            end
            for i = count, max, -1 do
                local data =  DRR.db.global.races[i];
                local race = DRR:GetRace(data.race);
                if race then
                    DRR:Print(L["RACE_RECAP_FORMAT"](race.name, data.time));
                end
            end
        end
    else
        DRR:OpenPBWindow();
    end
end

local function locate(table, value)
    for i = 1, #table do
        if table[i] == value then return true end
    end
    return false;
end

function DRR:OnMonsterSay(event, message, npc)
    if DRR.CURRENT_RACE_CURRENCY then
        return
    end

    -- messages :
    -- - Your race time was 51.637 seconds. That was your best time yet!
    -- - Bronze Timekeeper says: Your race time was 64.944 seconds. Your personal best for this race is 51.064 seconds.
    -- - Bronzezeithüterin sagt: Eure Zeit liegt bei 62,677 Sekunden. Eure persönliche Bestzeit für dieses Rennen liegt bei 53.632 Sekunden.
    if true == locate(L["NPC_NAMES"], npc) then
        local i = 0;
        message = string.gsub(message, ",", ".");
        local times = {};
        for time in string.gmatch(message, "(%d+.%d+)") do
            time = tonumber(time);
            table.insert(times, time);
            i = i + 1;
        end

        if table.getn(times) == 1 then
            DRR:EndRace(times[1]);
        elseif table.getn(times) > 1 then
            -- the NPC spoke about the PB, just try to add it in case it's not there
            DRR:EndRaceWithBetterTime(times[1], times[2]);
        end
    end
end

function DRR:OnQuestAccepted(event, questId)
    if questId then
        local race = DRR:GetRace(questId);
        if race then
            DRR:StartRace(race);
        end
    end
end

function DRR:OnQuestRemoved(event, questId)
    if not DRR.CURRENT_RACE_CURRENCY or not DRR.CURRENT_RACE then
        return
    end

    local race = DRR.CURRENT_RACE;

    if race.id ~= questId then
        return
    end

    local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(DRR.CURRENT_RACE_CURRENCY);

    if not currencyInfo then
        return
    end

    local currencyPb = currencyInfo.quantity;
    local savedPb = DRR.db.global.pb[questId];

    if not savedPb then
        DRR:OnRaceEndedSavedBest(race, currencyPb);
        DRR:TrySetScoreOnly(currencyPb);
        return
    end

    -- Normalize currencyPb to a float with 3 decimals
    currencyPb = currencyPb * 0.001;
    currencyPb = string.format("%.3f", currencyPb);
    currencyPb = tonumber(currencyPb)
;
    -- Normalize savedPb to a float with 3 decimals
    savedPb = string.format("%.3f", savedPb);
    savedPb = tonumber(savedPb);

    if currencyPb < savedPb then
        DRR:EndRace(currencyPb);
    elseif not DRR:Failed() then
        DRR:OnRaceEndedSavedBest(race, currencyPb);
        DRR:TrySetScoreOnly(currencyPb);
    end
end

function DRR:Failed()
    local spells = {394884, 382142}

    for _, spell in pairs(spells) do
        local name = C_UnitAuras.GetPlayerAuraBySpellID(spell);

        if name then
            return true
        end
    end

    return false
end

function DRR:OnPBReceived(raceTime, character)
    local timeForRace = DRR.db.global.guildpb[raceTime.race];

    if nil == timeForRace then
        DRR:TrySetGuildBest(raceTime);
        return;
    end

    if nil ~= timeForRace and tonumber(timeForRace.time) > tonumber(raceTime.time) then
        --DRR.db.global.guildpb[raceTime.race] = raceTime;
        DRR:TrySetGuildBest(raceTime);

        local race = DRR:GetRace(raceTime.race);
        if nil ~= race then
            DRR:Print(L["GUILD_BEST_BEATEN"](raceTime.time, race.name, character));
        end
        return;
    end
end

function DRR:OnPingReceived(from, version)
    if version > DRR.version and false == DRR.versionAlertSent then
        DRR:Print(L["ADDON_VERSION_OUTDATED"]);
        DRR.versionAlertSent = true;
    end
    DRR:SendPong();
end

function DRR:OnPongReceived(from, version)
    DRR:Debug("> |cffffd700".. from .."|r has version |cffffd700".. version .."|r");
end

function DRR:PrintError(message)
    DRR:Print("|cFFCC3333".. message .."|r");
end

function DRR:Debug(message)
    if "dev" == self.version then
        DRR:Print("|cFFAB18DB".. message .."|r");
    end
end