
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

local SEPARATOR = "///";

local RaceTime = {
    race = nil,
    time = nil,
    raceType = 0,
    addedBy = nil,
    createdAt = nil,
    deletedAt = nil
};
RaceTime.__index = RaceTime;

function RaceTime:Create(race, time, raceType)
    local rt = {};
    setmetatable(rt, RaceTime);

    rt.race = race;
    rt.time = time;
    rt.raceType = tonumber(raceType);
    rt.addedBy = DRR.CURRENT_PLAYER;
    rt.createdAt = GetServerTime();
    rt.deletedAt = nil;

    return rt;
end

function RaceTime:Pack()
    return self.race .. SEPARATOR .. self.time .. SEPARATOR .. self.raceType .. SEPARATOR .. self.addedBy .. SEPARATOR .. self.createdAt;
end

function RaceTime:Unpack(message)
    local segments = string.gmatch(message, "([^("..SEPARATOR..")]+)");
    local data = {};
    for s in segments do
        table.insert(data, s);
    end

    if table.getn(data) == 5 then
        self.race = tonumber(data[1]);
        self.time = data[2];
        self.raceType = tonumber(data[3]);
        self.addedBy = data[4];
        self.createdAt = tonumber(data[5]);
    end
end

function RaceTime:Print(data)
    data = data or self;
    local races = {'normal', 'advanced', 'reverse'};

    DRR:Print(data.race .." : ".. data.time .." ( type = "..races[data.raceType].." ) by "..data.createdAt);
end

DRR.RaceTime = RaceTime;