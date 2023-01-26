
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

local AceGUI = LibStub("AceGUI-3.0");
local isOpened = false;

function DRR:AddAllPB(container)
    container:ReleaseChildren();
    DRR:AddWakingShoresPB(container);
    DRR:AddOhnahranPlainsPB(container);
    DRR:AddAzureSpanPB(container);
    DRR:AddThaldraszusPB(container);
    --container:DoLayout();
end

function DRR:AddWakingShoresPB(container)
    DRR:AddPBZoneHeader(L["ZONE_WAKING_SHORES"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66679, advanced = 66692},
        {normal = 66710, advanced = 66712},
        {normal = 66721, advanced = 66722},
        {normal = 66725, advanced = 66726},
        {normal = 66732, advanced = 66733},
        {normal = 66727, advanced = 66728},
        {normal = 66777, advanced = 66778},
        {normal = 66786, advanced = 66787},
    };
    table.foreach(races, function(k, data)
        local race = DRR:GetRace(data.normal);
        local raceAdv = DRR:GetRace(data.advanced);
        local normal = DRR.db.global.pb[data.normal];
        local advanced = DRR.db.global.pb[data.advanced];
        DRR:AddPBLine(race, raceAdv, normal, advanced, container);
    end);
end

function DRR:AddOhnahranPlainsPB(container)
    DRR:AddPBZoneHeader(L["ZONE_OHNAHRAN_PLAINS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66835, advanced = 66836},
        {normal = 66877, advanced = 66878},
        {normal = 66880, advanced = 66881},
        {normal = 66885, advanced = 66886},
        {normal = 66921, advanced = nil},
        {normal = 66933, advanced = nil},
        {normal = 70710, advanced = 70711},
    };
    table.foreach(races, function(k, data)
        local race = DRR:GetRace(data.normal);
        local raceAdv = DRR:GetRace(data.advanced);
        local normal = DRR.db.global.pb[data.normal];
        local advanced = DRR.db.global.pb[data.advanced or 0];
        DRR:AddPBLine(race, raceAdv, normal, advanced, container);
    end);
end

function DRR:AddAzureSpanPB(container)
    DRR:AddPBZoneHeader(L["ZONE_AZURE_SPAN"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66946, advanced = 66947},
        {normal = 67002, advanced = 67003},
        {normal = 67031, advanced = 67032},
        {normal = 67296, advanced = 67297},
        {normal = 67565, advanced = 67566},
        {normal = 67741, advanced = 67742},
    };
    table.foreach(races, function(k, data)
        local race = DRR:GetRace(data.normal);
        local raceAdv = DRR:GetRace(data.advanced);
        local normal = DRR.db.global.pb[data.normal];
        local advanced = DRR.db.global.pb[data.advanced];
        DRR:AddPBLine(race, raceAdv, normal, advanced, container);
    end);
end

function DRR:AddThaldraszusPB(container)
    DRR:AddPBZoneHeader(L["ZONE_THALDRASZUS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 67095, advanced = 67096},
        {normal = 69957, advanced = 69958},
        {normal = 70051, advanced = 70052},
        {normal = 70059, advanced = 70060},
        {normal = 70157, advanced = 70158},
        {normal = 70161, advanced = 70163},
    };
    table.foreach(races, function(k, data)
        local race = DRR:GetRace(data.normal);
        local raceAdv = DRR:GetRace(data.advanced);
        local normal = DRR.db.global.pb[data.normal];
        local advanced = DRR.db.global.pb[data.advanced];
        DRR:AddPBLine(race, raceAdv, normal, advanced, container);
    end);
end

function DRR:AddPBZoneHeader(zoneName, container)
    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local zone = AceGUI:Create("Heading");
    zone:SetText(zoneName);
    zone:SetRelativeWidth(1);
    lineGroup:AddChild(zone);
end

function DRR:AddPBHeader(container)
    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local raceName = AceGUI:Create("Label");
    raceName:SetText(L["UI_PB_HEADER_RACE"]);
    raceName:SetRelativeWidth(0.3);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(L["UI_PB_HEADER_PB_N"]);
    raceTimeN:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(L["UI_PB_HEADER_PB_A"]);
    raceTimeA:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceTimeA);

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(L["UI_PB_HEADER_GPB_A"]);
    raceGTimeA:SetRelativeWidth(0.3);
    lineGroup:AddChild(raceGTimeA);
end

function DRR:AddPBLine(race, raceAdv, normalTime, advancedTime, container)
    local formatedNormal = "-";
    local formatedAdvanced = "-";
    if normalTime then
        formatedNormal = L["RACE_TIME_FORMAT"](normalTime);
        if tonumber(race.gold) > tonumber(normalTime) then
            formatedNormal = "|cff13ef13"..formatedNormal.."|r";
        end
    end
    formatedNormal = formatedNormal.." / |cffffd700"..L["RACE_TIME_FORMAT"](race.gold).."|r";

    if advancedTime then
        formatedAdvanced = L["RACE_TIME_FORMAT"](advancedTime);
        if nil ~= raceAdv then
            if tonumber(raceAdv.gold) > tonumber(advancedTime) then
                formatedAdvanced = "|cff13ef13"..formatedAdvanced.."|r";
            end
        end
    end
    if nil ~= raceAdv then
        formatedAdvanced = formatedAdvanced.." / |cffffd700"..L["RACE_TIME_FORMAT"](raceAdv.gold).."|r";
    end

    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local raceName = AceGUI:Create("Label");
    raceName:SetText(race.name);
    raceName:SetRelativeWidth(0.3);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(formatedNormal);
    raceTimeN:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(formatedAdvanced);
    raceTimeA:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceTimeA);

    local gtimeA = nil;
    if nil ~= raceAdv then
        local gBest = DRR.db.global.guildpb[raceAdv.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeA = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if DRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeA = "|cff13ef13"..gtimeA.."|r";
            end
        end
    end
    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(gtimeA);
    raceGTimeA:SetRelativeWidth(0.3);
    lineGroup:AddChild(raceGTimeA);
end

function DRR:OpenPBWindow()
    -- Don't open multiple windows
    if isOpened then return end

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(L["UI_PB_TITLE"]);
    frame:SetStatusText(L["UI_PB_GUILD_INFO"])
    frame:SetWidth(800);
    frame:SetHeight(600);
    frame:SetCallback("OnClose", function(widget)
        frame:ReleaseChildren();
        AceGUI:Release(widget);
        isOpened = false;
    end)
    frame:SetLayout("Flow");

    local mainGroup = AceGUI:Create("SimpleGroup");
    mainGroup:SetFullWidth(true);
    mainGroup:SetFullHeight(true);
    mainGroup:SetLayout("Flow");

    local scrollGroup = AceGUI:Create("SimpleGroup");
    scrollGroup:SetFullWidth(true);
    scrollGroup:SetFullHeight(true);
    scrollGroup:SetLayout("Fill");
    mainGroup:AddChild(scrollGroup);

    scrollFrame = AceGUI:Create("ScrollFrame");
    scrollFrame:SetLayout("Flow");
    scrollGroup:AddChild(scrollFrame);

    DRR:AddAllPB(scrollFrame);

    frame:AddChild(mainGroup);

    isOpened = true;
end