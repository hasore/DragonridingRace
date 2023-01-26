
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);
local setmetatable = _G.setmetatable;

local SEPARATOR = "///";

local RaceTime = {
    race = nil,
    time = nil,
    advanced = false,
    addedBy = nil,
    createdAt = nil,
    deletedAt = nil
};
RaceTime.__index = RaceTime;

function RaceTime:Create(race, time, advanced)
    local rt = {};
    setmetatable(rt, RaceTime);

    rt.race = race;
    rt.time = time;
    rt.advanced = advanced;
    rt.addedBy = DRR.CURRENT_PLAYER;
    rt.createdAt = GetServerTime();
    rt.deletedAt = nil;

    return rt;
end

function RaceTime:Pack()
    local advanced = "0";
    if self.advanced then
        advanced = "1";
    end
    return self.race .. SEPARATOR .. self.time .. SEPARATOR .. advanced .. SEPARATOR .. self.addedBy .. SEPARATOR .. self.createdAt;
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
        local advanced = data[3];
        if advanced == "1" then
            self.advanced = true;
        else
            self.advanced = false;
        end
        self.addedBy = data[4];
        self.createdAt = tonumber(data[5]);
    end
end

function RaceTime:Print(data)
    data = data or self;
    local adv = "false";
    if data.advanced then
        adv = "true";
    end
    DRR:Print(data.race .." : ".. data.time .." (adv="..adv..") by "..data.createdAt);
end

DRR.RaceTime = RaceTime;