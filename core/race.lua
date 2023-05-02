
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

DRR.Races = {};
-- The Waking Shores
-- Ruby Lifeshrine Loop
table.insert(DRR.Races, {id = 66679, currency = 2042, name = L["RACE_66679"], raceType = 0, gold = 64});
table.insert(DRR.Races, {id = 66692, currency = 2044, name = L["RACE_66692"], raceType = 1, gold = 52});
table.insert(DRR.Races, {id = 72052, currency = 2154, name = L["RACE_72052"], raceType = 2, gold = 50});
-- Flashfrost Flyover
table.insert(DRR.Races, {id = 66710, currency = 2046, name = L["RACE_66710"], raceType = 0, gold = 63});
table.insert(DRR.Races, {id = 66712, currency = 2047, name = L["RACE_66712"], raceType = 1, gold = 61});
table.insert(DRR.Races, {id = 72700, currency = 2181, name = L["RACE_72700"], raceType = 2, gold = 60});
-- Wild Preserve Slalom
table.insert(DRR.Races, {id = 66721, currency = 2048, name = L["RACE_66721"], raceType = 0, gold = 43});
table.insert(DRR.Races, {id = 66722, currency = 2049, name = L["RACE_66722"], raceType = 1, gold = 40});
table.insert(DRR.Races, {id = 72705, currency = 2176, name = L["RACE_72705"], raceType = 2, gold = 41});
-- Wild Preserve Circuit
table.insert(DRR.Races, {id = 66725, currency = 2050, name = L["RACE_66725"], raceType = 0, gold = 41});
table.insert(DRR.Races, {id = 66726, currency = 2051, name = L["RACE_66726"], raceType = 1, gold = 38});
table.insert(DRR.Races, {id = 72706, currency = 2182, name = L["RACE_72706"], raceType = 2, gold = 41});
-- Apex Canopy River Run
table.insert(DRR.Races, {id = 66732, currency = 2054, name = L["RACE_66732"], raceType = 0, gold = 48});
table.insert(DRR.Races, {id = 66733, currency = 2055, name = L["RACE_66733"], raceType = 1, gold = 45});
table.insert(DRR.Races, {id = 72734, currency = 2178, name = L["RACE_72734"], raceType = 2, gold = 48});
-- Emberflow Flight
table.insert(DRR.Races, {id = 66727, currency = 2052, name = L["RACE_66727"], raceType = 0, gold = 47});
table.insert(DRR.Races, {id = 66728, currency = 2053, name = L["RACE_66728"], raceType = 1, gold = 44});
table.insert(DRR.Races, {id = 72707, currency = 2177, name = L["RACE_72707"], raceType = 2, gold = 45});
-- Uktulut Coaster
table.insert(DRR.Races, {id = 66777, currency = 2056, name = L["RACE_66777"], raceType = 0, gold = 43});
table.insert(DRR.Races, {id = 66778, currency = 2057, name = L["RACE_66778"], raceType = 1, gold = 40});
table.insert(DRR.Races, {id = 72739, currency = 2179, name = L["RACE_72739"], raceType = 2, gold = 43});
-- Wingrest Roundabout
table.insert(DRR.Races, {id = 66786, currency = 2058, name = L["RACE_66786"], raceType = 0, gold = 53});
table.insert(DRR.Races, {id = 66787, currency = 2059, name = L["RACE_66787"], raceType = 1, gold = 53});
table.insert(DRR.Races, {id = 72740, currency = 2180, name = L["RACE_72740"], raceType = 2, gold = 56});

-- Ohn'ahran Plains
-- Sundapple Copse Circuit
table.insert(DRR.Races, {id = 66835, currency = 2060, name = L["RACE_66835"], raceType = 0, gold = 44});
table.insert(DRR.Races, {id = 66836, currency = 2061, name = L["RACE_66836"], raceType = 1, gold = 41});
table.insert(DRR.Races, {id = 72801, currency = 2183, name = L["RACE_72801"], raceType = 2, gold = 45});
-- Fen Flythrough
table.insert(DRR.Races, {id = 66877, currency = 2062, name = L["RACE_66877"], raceType = 0, gold = 44});
table.insert(DRR.Races, {id = 66878, currency = 2063, name = L["RACE_66878"], raceType = 1, gold = 41});
table.insert(DRR.Races, {id = 72802, currency = 2184, name = L["RACE_72802"], raceType = 2, gold = 47});
-- Ravine River Run
table.insert(DRR.Races, {id = 66880, currency = 2064, name = L["RACE_66880"], raceType = 0, gold = 50});
table.insert(DRR.Races, {id = 66881, currency = 2065, name = L["RACE_66881"], raceType = 1, gold = 47});
table.insert(DRR.Races, {id = 72803, currency = 2185, name = L["RACE_72803"], raceType = 2, gold = 46});
-- Emerald Garden Ascent
table.insert(DRR.Races, {id = 66885, currency = 2066, name = L["RACE_66885"], raceType = 0, gold = 59});
table.insert(DRR.Races, {id = 66886, currency = 2067, name = L["RACE_66886"], raceType = 1, gold = 55});
table.insert(DRR.Races, {id = 72805, currency = 2186, name = L["RACE_72805"], raceType = 2, gold = 57});
-- Maruukai Dash
table.insert(DRR.Races, {id = 66921, currency = 2069, name = L["RACE_66921"], raceType = 0, gold = 25});
-- Mirror of the Sky Dash
table.insert(DRR.Races, {id = 66933, currency = 2070, name = L["RACE_66933"], raceType = 0, gold = 26});
-- River Rapids Route
table.insert(DRR.Races, {id = 70710, currency = 2119, name = L["RACE_70710"], raceType = 0, gold = 46});
table.insert(DRR.Races, {id = 70711, currency = 2120, name = L["RACE_70711"], raceType = 1, gold = 43});
table.insert(DRR.Races, {id = 72807, currency = 2187, name = L["RACE_72807"], raceType = 2, gold = 44});

-- Azure Span
-- The Azure Span Sprint
table.insert(DRR.Races, {id = 66946, currency = 2074, name = L["RACE_66946"], raceType = 0, gold = 63});
table.insert(DRR.Races, {id = 66947, currency = 2075, name = L["RACE_66947"], raceType = 1, gold = 58});
table.insert(DRR.Races, {id = 72796, currency = 2188, name = L["RACE_72796"], raceType = 2, gold = 60});
-- The Azure Span Slalom
table.insert(DRR.Races, {id = 67002, currency = 2076, name = L["RACE_67002"], raceType = 0, gold = 58});
table.insert(DRR.Races, {id = 67003, currency = 2077, name = L["RACE_67003"], raceType = 1, gold = 56});
table.insert(DRR.Races, {id = 72799, currency = 2189, name = L["RACE_72799"], raceType = 2, gold = 53});
-- The Vakthros Ascent
table.insert(DRR.Races, {id = 67031, currency = 2078, name = L["RACE_67031"], raceType = 0, gold = 58});
table.insert(DRR.Races, {id = 67032, currency = 2079, name = L["RACE_67032"], raceType = 1, gold = 56});
table.insert(DRR.Races, {id = 72794, currency = 2190, name = L["RACE_72794"], raceType = 2, gold = 56});
-- Iskaara Tour
table.insert(DRR.Races, {id = 67296, currency = 2083, name = L["RACE_67296"], raceType = 0, gold = 75});
table.insert(DRR.Races, {id = 67297, currency = 2084, name = L["RACE_67297"], raceType = 1, gold = 70});
table.insert(DRR.Races, {id = 72800, currency = 2191, name = L["RACE_72800"], raceType = 2, gold = 67});
-- Frostland Flyover
table.insert(DRR.Races, {id = 67565, currency = 2085, name = L["RACE_67565"], raceType = 0, gold = 76});
table.insert(DRR.Races, {id = 67566, currency = 2086, name = L["RACE_67566"], raceType = 1, gold = 72});
table.insert(DRR.Races, {id = 72795, currency = 2192, name = L["RACE_72795"], raceType = 2, gold = 69});
-- Archive Ambit
table.insert(DRR.Races, {id = 67741, currency = 2089, name = L["RACE_67741"], raceType = 0, gold = 91});
table.insert(DRR.Races, {id = 67742, currency = 2090, name = L["RACE_67742"], raceType = 1, gold = 81});
table.insert(DRR.Races, {id = 72797, currency = 2193, name = L["RACE_72797"], raceType = 2, gold = 76});

-- Thaldraszus
-- The Flowing Forest Flight
table.insert(DRR.Races, {id = 67095, currency = 2080, name = L["RACE_67095"], raceType = 0, gold = 49});
table.insert(DRR.Races, {id = 67096, currency = 2081, name = L["RACE_67096"], raceType = 1, gold = 40});
table.insert(DRR.Races, {id = 72793, currency = 2194, name = L["RACE_72793"], raceType = 2, gold = 41});
-- Tyrhold Trial
table.insert(DRR.Races, {id = 69957, currency = 2092, name = L["RACE_69957"], raceType = 0, gold = 81});
table.insert(DRR.Races, {id = 69958, currency = 2093, name = L["RACE_69958"], raceType = 1, gold = 75});
table.insert(DRR.Races, {id = 72792, currency = 2195, name = L["RACE_72792"], raceType = 2, gold = 59});
-- Cliffside Circuit
table.insert(DRR.Races, {id = 70051, currency = 2096, name = L["RACE_70051"], raceType = 0, gold = 69});
table.insert(DRR.Races, {id = 70052, currency = 2097, name = L["RACE_70052"], raceType = 1, gold = 66});
table.insert(DRR.Races, {id = 72760, currency = 2196, name = L["RACE_72760"], raceType = 2, gold = 69});
-- Academy Ascent
table.insert(DRR.Races, {id = 70059, currency = 2098, name = L["RACE_70059"], raceType = 0, gold = 54});
table.insert(DRR.Races, {id = 70060, currency = 2099, name = L["RACE_70060"], raceType = 1, gold = 52});
table.insert(DRR.Races, {id = 72754, currency = 2197, name = L["RACE_72754"], raceType = 2, gold = 53});
-- Garden Gallivant
table.insert(DRR.Races, {id = 70157, currency = 2101, name = L["RACE_70157"], raceType = 0, gold = 61});
table.insert(DRR.Races, {id = 70158, currency = 2102, name = L["RACE_70158"], raceType = 1, gold = 54});
table.insert(DRR.Races, {id = 72769, currency = 2198, name = L["RACE_72769"], raceType = 2, gold = 57});
-- Caverns Criss-Cross
table.insert(DRR.Races, {id = 70161, currency = 2103, name = L["RACE_70161"], raceType = 0, gold = 50});
table.insert(DRR.Races, {id = 70163, currency = 2104, name = L["RACE_70163"], raceType = 1, gold = 45});
table.insert(DRR.Races, {id = 72750, currency = 2199, name = L["RACE_72750"], raceType = 2, gold = 47});

-- Forbidden Reach
-- Stormsunder Crate Circuit
table.insert(DRR.Races, {id = 73017, currency = 2201, name = L["RACE_73017"], raceType = 0, gold = 43});
table.insert(DRR.Races, {id = 73018, currency = 2207, name = L["RACE_73018"], raceType = 1, gold = 42});
table.insert(DRR.Races, {id = 73019, currency = 2213, name = L["RACE_73019"], raceType = 2, gold = 42});
-- Morqut Ascent
table.insert(DRR.Races, {id = 73020, currency = 2202, name = L["RACE_73020"], raceType = 0, gold = 52});
table.insert(DRR.Races, {id = 73023, currency = 2208, name = L["RACE_73023"], raceType = 1, gold = 49});
table.insert(DRR.Races, {id = 73024, currency = 2214, name = L["RACE_73024"], raceType = 2, gold = 52});
-- Aerie Chasm Cruise
table.insert(DRR.Races, {id = 73025, currency = 2203, name = L["RACE_73025"], raceType = 0, gold = 58});
table.insert(DRR.Races, {id = 73027, currency = 2209, name = L["RACE_73027"], raceType = 1, gold = 50});
table.insert(DRR.Races, {id = 73028, currency = 2215, name = L["RACE_73028"], raceType = 2, gold = 50});
-- Southern Reach Route
table.insert(DRR.Races, {id = 73029, currency = 2204, name = L["RACE_73029"], raceType = 0, gold = 70});
table.insert(DRR.Races, {id = 73030, currency = 2210, name = L["RACE_73030"], raceType = 1, gold = 68});
table.insert(DRR.Races, {id = 73032, currency = 2216, name = L["RACE_73032"], raceType = 2, gold = 63});
-- Caldera Coaster
table.insert(DRR.Races, {id = 73033, currency = 2205, name = L["RACE_73033"], raceType = 0, gold = 58});
table.insert(DRR.Races, {id = 73034, currency = 2211, name = L["RACE_73034"], raceType = 1, gold = 52});
table.insert(DRR.Races, {id = 73052, currency = 2217, name = L["RACE_73052"], raceType = 2, gold = 49});
-- Forbidden Reach Rush
table.insert(DRR.Races, {id = 73061, currency = 2206, name = L["RACE_73061"], raceType = 0, gold = 59});
table.insert(DRR.Races, {id = 73062, currency = 2212, name = L["RACE_73062"], raceType = 1, gold = 56});
table.insert(DRR.Races, {id = 73065, currency = 2218, name = L["RACE_73065"], raceType = 2, gold = 57});

-- Zaralek Cavern
-- Crystal Circuit
table.insert(DRR.Races, {id = 74839, currency = 2246, name = L["RACE_74839"], raceType = 0, gold = 63});
table.insert(DRR.Races, {id = 74842, currency = 2252, name = L["RACE_74842"], raceType = 1, gold = 55});
table.insert(DRR.Races, {id = 74882, currency = 2258, name = L["RACE_74882"], raceType = 2, gold = 53});
-- Caldera Cruise
table.insert(DRR.Races, {id = 74889, currency = 2247, name = L["RACE_74889"], raceType = 0, gold = 75});
table.insert(DRR.Races, {id = 74899, currency = 2253, name = L["RACE_74899"], raceType = 1, gold = 68});
table.insert(DRR.Races, {id = 74925, currency = 2259, name = L["RACE_74925"], raceType = 2, gold = 68});
-- Brimstone Scramble
table.insert(DRR.Races, {id = 74939, currency = 2248, name = L["RACE_74939"], raceType = 0, gold = 69});
table.insert(DRR.Races, {id = 74943, currency = 2254, name = L["RACE_74943"], raceType = 1, gold = 64});
table.insert(DRR.Races, {id = 74944, currency = 2260, name = L["RACE_74944"], raceType = 2, gold = 64});
-- Shimmering Slalom
table.insert(DRR.Races, {id = 74951, currency = 2249, name = L["RACE_74951"], raceType = 0, gold = 75});
table.insert(DRR.Races, {id = 74954, currency = 2255, name = L["RACE_74954"], raceType = 1, gold = 70});
table.insert(DRR.Races, {id = 74956, currency = 2261, name = L["RACE_74956"], raceType = 2, gold = 72});
-- Zaralek Zigzag
table.insert(DRR.Races, {id = 74972, currency = 2250, name = L["RACE_74972"], raceType = 0, gold = 55});
table.insert(DRR.Races, {id = 74975, currency = 2256, name = L["RACE_74975"], raceType = 1, gold = 50});
table.insert(DRR.Races, {id = 74977, currency = 2262, name = L["RACE_74977"], raceType = 2, gold = 48});
-- Sulfur Sprint
table.insert(DRR.Races, {id = 75035, currency = 2251, name = L["RACE_75035"], raceType = 0, gold = 64});
table.insert(DRR.Races, {id = 75042, currency = 2257, name = L["RACE_75042"], raceType = 1, gold = 57});
table.insert(DRR.Races, {id = 75043, currency = 2263, name = L["RACE_75043"], raceType = 2, gold = 57});


DRR.CURRENT_RACE = nil;
DRR.CURRENT_RACE_CURRENCY = nil;
DRR.LAST_RACE = nil;

function DRR:GetRace(questID)
    if questID then
        for index, race in ipairs(DRR.Races) do
            if tonumber(race.id) == tonumber(questID) then
                return race;
            end
        end
    end

    return nil;
end

function DRR:StartRace(race)
    DRR.CURRENT_RACE = race;
    DRR.CURRENT_RACE_CURRENCY = race.currency;
    DRR:Debug("Start race "..race.name);
end

function DRR:EndRace(time)
    if DRR.CURRENT_RACE then
        local race = DRR.CURRENT_RACE;
        local raceTime = DRR.RaceTime:Create(race.id, time, race.raceType);
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
        local raceTime = DRR.RaceTime:Create(race.id, bestTime, race.raceType);
        table.insert(DRR.db.global.races, raceTime);

        local isPB, previousTime = DRR:TrySetPB(raceTime);
        local isGuildPB = DRR:TrySetGuildBest(raceTime);

        DRR.CURRENT_RACE = nil;
        DRR.LAST_RACE = race;

        if isPB then
            DRR:OnPBBeaten(race, raceTime);
        else
            raceTime = DRR.RaceTime:Create(race.id, time, race.raceType);
            DRR:OnRaceEnded(race, raceTime);
        end

        if isGuildPB then
            DRR:OnGuildBeaten(race, raceTime);
        end
    else
        DRR:PrintError("Could not locate current course");
    end
end

function DRR:TrySetScoreOnly(time)
    if DRR.CURRENT_RACE then
        local race = DRR.CURRENT_RACE;
        local raceTime = DRR.RaceTime:Create(race.id, time, race.raceType);

        local isPB, previousTime = DRR:TrySetPB(raceTime);
        local isGuildPB = DRR:TrySetGuildBest(raceTime);

        DRR.CURRENT_RACE = nil;
    else
        DRR:PrintError("Could not locate current course");
    end
end

function DRR:TrySetPB(raceTime)
    local pb = DRR.db.global.pb[raceTime.race];

    if pb == nil or pb == 0 then
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


function DRR:OnRaceEndedCharacterBest(race, time)
    DRR:Print(L["RACE_FINISHED_CHARACTER_BEST_FORMAT"](race.name, time));
end

function DRR:OnRaceEndedSavedBest(race, time, saved)
    DRR:Print(L["RACE_FINISHED_SAVED_BEST_FORMAT"](race.name, time, saved));
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
