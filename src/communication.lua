
local addonName, DRR = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true);

-- MESSAGES CONSTANTS
local MESSAGE_PING = "PING";
local MESSAGE_PONG = "PONG";
local MESSAGE_ASK_PBS = "ASK_PBS";
local MESSAGE_SEND_PB = "SEND_PB";

-- send comm message to all addon owners in the guild
function DRR:SendComm(message)
    -- since the addon only support guilds, checking if the player is in a guild in order to avoid annoying chat messages
    if not IsInGuild() then
        return;
    end

    DRR:SendCommMessage(DRR.COMM_PREFIX, message, DRR.COMM_CHANNEL);
    DRR:Debug("Comm Sent // ".. message);
end

-- process the incoming message
function DRR:OnCommReceived(prefix, message, distribution, sender)
    --if "XXXXX" == prefix then
        --DRR:HandleD4Message(prefix, message, distribution, sender);
    --else
        DRR:HandleAddonMessage(prefix, message, distribution, sender);
    --end
end

function DRR:HandleAddonMessage(prefix, message, distribution, sender)
    -- ignore messages we have sent
    if DRR.CURRENT_PLAYER == sender then return end

    DRR:Debug("Comm Received // ".. message .. " // from ".. sender);

    local command, nextposition = DRR:GetArgs(message, 1);
    if MESSAGE_PING == command then
        local version = string.sub(message, nextposition);
        DRR:OnPingReceived(sender, version);
    elseif MESSAGE_PONG == command then
        local version = string.sub(message, nextposition);
        DRR:OnPongReceived(sender, version);
    elseif MESSAGE_ASK_PBS == command then
        DRR:SendAllPBs();
    elseif MESSAGE_SEND_PB == command then
        local message = string.sub(message, nextposition);
        local raceTime = DRR.RaceTime:Create(nil, nil, nil);
        raceTime:Unpack(message);
        if raceTime.race and raceTime.time and raceTime.addedBy then
            DRR:OnPBReceived(raceTime, sender);
        end
    end
end

function DRR:SendAskPBS()
    DRR:SendComm(MESSAGE_ASK_PBS);
end

function DRR:SendAllPBs()
    table.foreach(DRR.db.global.pb, function(raceId, time)
        local race = DRR:GetRace(raceId);
        local raceTime = DRR.RaceTime:Create(race.id, time, race.raceType);
        DRR:SendPB(raceTime);
    end);
end

function DRR:SendPB(raceTime)
    if nil == raceTime then
        return;
    end

    local message = raceTime:Pack();
    DRR:SendComm(MESSAGE_SEND_PB .. " " .. message);
end

function DRR:SendPing()
    DRR:SendComm(MESSAGE_PING .." ".. DRR.version);
end

function DRR:SendPong()
    DRR:SendComm(MESSAGE_PONG .." ".. DRR.version);
end