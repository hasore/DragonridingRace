
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

DRR.Races = {};
-- The Waking Shores
-- Ruby Lifeshrine Loop
table.insert(DRR.Races, {id = 66679, name = L["RACE_66679"], advanced = false, gold = 64});
table.insert(DRR.Races, {id = 66692, name = L["RACE_66692"], advanced = true, gold = 52});
-- Flashfrost Flyover
table.insert(DRR.Races, {id = 66710, name = L["RACE_66710"], advanced = false, gold = 63});
table.insert(DRR.Races, {id = 66712, name = L["RACE_66712"], advanced = true, gold = 61});
-- Wild Preserve Slalom
table.insert(DRR.Races, {id = 66721, name = L["RACE_66721"], advanced = false, gold = 43});
table.insert(DRR.Races, {id = 66722, name = L["RACE_66722"], advanced = true, gold = 40});
-- Wild Preserve Circuit
table.insert(DRR.Races, {id = 66725, name = L["RACE_66725"], advanced = false, gold = 41});
table.insert(DRR.Races, {id = 66726, name = L["RACE_66726"], advanced = true, gold = 38});
-- Apex Canopy River Run
table.insert(DRR.Races, {id = 66732, name = L["RACE_66732"], advanced = false, gold = 48});
table.insert(DRR.Races, {id = 66733, name = L["RACE_66733"], advanced = true, gold = 45});
-- Emberflow Flight
table.insert(DRR.Races, {id = 66727, name = L["RACE_66727"], advanced = false, gold = 47});
table.insert(DRR.Races, {id = 66728, name = L["RACE_66728"], advanced = true, gold = 44});
-- Uktulut Coaster
table.insert(DRR.Races, {id = 66777, name = L["RACE_66777"], advanced = false, gold = 43});
table.insert(DRR.Races, {id = 66778, name = L["RACE_66778"], advanced = true, gold = 40});
-- Wingrehst Roundabout
table.insert(DRR.Races, {id = 66786, name = L["RACE_66786"], advanced = false, gold = 53});
table.insert(DRR.Races, {id = 66787, name = L["RACE_66787"], advanced = true, gold = 53});

-- Ohn'ahran Plains
-- Sundapple Copse Circuit
table.insert(DRR.Races, {id = 66835, name = L["RACE_66835"], advanced = false, gold = 44});
table.insert(DRR.Races, {id = 66836, name = L["RACE_66836"], advanced = true, gold = 41});
-- Fen Flythrough
table.insert(DRR.Races, {id = 66877, name = L["RACE_66877"], advanced = false, gold = 44});
table.insert(DRR.Races, {id = 66878, name = L["RACE_66878"], advanced = true, gold = 41});
-- Ravine River Run
table.insert(DRR.Races, {id = 66880, name = L["RACE_66880"], advanced = false, gold = 50});
table.insert(DRR.Races, {id = 66881, name = L["RACE_66881"], advanced = true, gold = 47});
-- Emerald Garden Ascent
table.insert(DRR.Races, {id = 66885, name = L["RACE_66885"], advanced = false, gold = 59});
table.insert(DRR.Races, {id = 66886, name = L["RACE_66886"], advanced = true, gold = 55});
-- Maruukai Dash
table.insert(DRR.Races, {id = 66921, name = L["RACE_66921"], advanced = false, gold = 25});
-- Mirror of the Sky Dash
table.insert(DRR.Races, {id = 66933, name = L["RACE_66933"], advanced = false, gold = 26});
-- River Rapids Route
table.insert(DRR.Races, {id = 70710, name = L["RACE_70710"], advanced = false, gold = 46});
table.insert(DRR.Races, {id = 70711, name = L["RACE_70711"], advanced = true, gold = 43});

-- Azure Span
-- The Azure Span Sprint
table.insert(DRR.Races, {id = 66946, name = L["RACE_66946"], advanced = false, gold = 63});
table.insert(DRR.Races, {id = 66947, name = L["RACE_66947"], advanced = true, gold = 58});
-- The Azure Span Slalom
table.insert(DRR.Races, {id = 67002, name = L["RACE_67002"], advanced = false, gold = 58});
table.insert(DRR.Races, {id = 67003, name = L["RACE_67003"], advanced = true, gold = 56});
-- The Vakthros Ascent
table.insert(DRR.Races, {id = 67031, name = L["RACE_67031"], advanced = false, gold = 58});
table.insert(DRR.Races, {id = 67032, name = L["RACE_67032"], advanced = true, gold = 56});
-- Iskaara Tour
table.insert(DRR.Races, {id = 67296, name = L["RACE_67296"], advanced = false, gold = 75});
table.insert(DRR.Races, {id = 67297, name = L["RACE_67297"], advanced = true, gold = 70});
-- Frostland Flyover
table.insert(DRR.Races, {id = 67565, name = L["RACE_67565"], advanced = false, gold = 76});
table.insert(DRR.Races, {id = 67566, name = L["RACE_67566"], advanced = true, gold = 72});
-- Archive Ambit
table.insert(DRR.Races, {id = 67741, name = L["RACE_67741"], advanced = false, gold = 91});
table.insert(DRR.Races, {id = 67742, name = L["RACE_67742"], advanced = true, gold = 81});

-- Thaldraszus
-- The Flowing Forest Flight
table.insert(DRR.Races, {id = 67095, name = L["RACE_67095"], advanced = false, gold = 49});
table.insert(DRR.Races, {id = 67096, name = L["RACE_67096"], advanced = true, gold = 40});
-- Tyrhold Trial
table.insert(DRR.Races, {id = 69957, name = L["RACE_69957"], advanced = false, gold = 81});
table.insert(DRR.Races, {id = 69958, name = L["RACE_69958"], advanced = true, gold = 75});
-- Cliffside Circuit
table.insert(DRR.Races, {id = 70051, name = L["RACE_70051"], advanced = false, gold = 69});
table.insert(DRR.Races, {id = 70052, name = L["RACE_70052"], advanced = true, gold = 66});
-- Academy Ascent
table.insert(DRR.Races, {id = 70059, name = L["RACE_70059"], advanced = false, gold = 54});
table.insert(DRR.Races, {id = 70060, name = L["RACE_70060"], advanced = true, gold = 52});
-- Garden Gallivant
table.insert(DRR.Races, {id = 70157, name = L["RACE_70157"], advanced = false, gold = 61});
table.insert(DRR.Races, {id = 70158, name = L["RACE_70158"], advanced = true, gold = 54});
-- Caverns Criss-Cross
table.insert(DRR.Races, {id = 70161, name = L["RACE_70161"], advanced = false, gold = 50});
table.insert(DRR.Races, {id = 70163, name = L["RACE_70163"], advanced = true, gold = 45});


DRR.CURRENT_RACE = nil;
DRR.LAST_RACE = nil;

function DRR:GetRace(questID)
    for index, race in ipairs(DRR.Races) do
        if tonumber(race.id) == tonumber(questID) then
            return race;
        end
    end

    return nil;
end

function DRR:StartRace(race)
    DRR.CURRENT_RACE = race;
    DRR:Debug("Start race "..race.name);
end

function DRR:EndRace(time)
    if DRR.CURRENT_RACE then
        local race = DRR.CURRENT_RACE;
        local raceTime = DRR.RaceTime:Create(race.id, time, race.advanced);
        table.insert(DRR.db.global.races, raceTime);

        local isPB, previousTime = DRR:TrySetPB(raceTime);
        local isGuildPB = DRR:TrySetGuildBest(raceTime);

        DRR.CURRENT_RACE = nil;
        DRR.LAST_RACE = race;

        if isPB then
            DRR:OnPBBeaten(race, raceTime, previousTime);
        else
            DRR:OnRaceEnded(race, raceTime);
        end

        if isGuildPB then
            DRR:OnGuildBeaten(race, raceTime);
        end
    else
        DRR:PrintError("Could not locate current course");
    end
end

function DRR:EndRaceWithBetterTime(time, bestTime)
    if DRR.CURRENT_RACE then
        local race = DRR.CURRENT_RACE;
        local raceTime = DRR.RaceTime:Create(race.id, bestTime, race.advanced);
        table.insert(DRR.db.global.races, raceTime);

        local isPB, previousTime = DRR:TrySetPB(raceTime);
        local isGuildPB = DRR:TrySetGuildBest(raceTime);

        DRR.CURRENT_RACE = nil;
        DRR.LAST_RACE = race;

        if isPB then
            DRR:OnPBBeaten(race, raceTime);
        else
            raceTime = DRR.RaceTime:Create(race.id, time, race.advanced);
            DRR:OnRaceEnded(race, raceTime);
        end

        if isGuildPB then
            DRR:OnGuildBeaten(race, raceTime);
        end
    else
        DRR:PrintError("Could not locate current course");
    end
end

function DRR:TrySetPB(raceTime)
    local pb = DRR.db.global.pb[raceTime.race];

    if pb == nil then
        DRR.db.global.pb[raceTime.race] = raceTime.time;
        -- Share to the world
        DRR:SendPB(raceTime);
        return false, pb;
    end

    if tonumber(raceTime.time) < tonumber(pb) then
        DRR.db.global.pb[raceTime.race] = raceTime.time;
        -- Share to the world
        DRR:SendPB(raceTime);
        return true, pb;
    end

    return false, pb;
end

function DRR:TrySetGuildBest(raceTime)
    local pb = DRR.db.global.guildpb[raceTime.race];

    if pb == nil then
        DRR.db.global.guildpb[raceTime.race] = raceTime;
        return true, pb;
    end

    if tonumber(raceTime.time) < tonumber(pb.time) then
        DRR.db.global.guildpb[raceTime.race] = raceTime;
        return true, pb;
    end

    return false, pb;
end

function DRR:OnRaceEnded(race, raceTime)
    DRR:Print(L["RACE_FINISHED_FORMAT"](race.name, raceTime.time));
end

function DRR:OnPBBeaten(race, raceTime, previousTime)
    race = race or "n/a";
    raceTime.time = raceTime.time or "0";
    previousTime = previousTime or "0";
    
    -- User experience
    DRR:Print(L["RACE_FINISHED_PB_FORMAT"](race.name, raceTime.time, previousTime));
    PlaySound(118538, "master"); -- Island victory music
end

function DRR:OnGuildBeaten(race, raceTime)
    race = race or "n/a";
    raceTime.time = raceTime.time or "0";
    previousTime = previousTime or "0";
    
    -- User experience
    DRR:Print(L["RACE_FINISHED_GUILD_PB_FORMAT"](race.name, raceTime.time));
end
