
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
    DRR:AddForbiddenReachPB(container);
    --container:DoLayout();
end

function DRR:AddPBLine_Table(races, container)
    if races then
        table.foreach(races, function(k, data)
            local race = DRR:GetRace(data.normal);
            local raceAdv = DRR:GetRace(data.advanced);
            local raceReverse = DRR:GetRace(data.reverse);

            local normal = DRR.db.global.pb[data.normal];
            local advanced = DRR.db.global.pb[data.advanced or 0];
            local reverse = DRR.db.global.pb[data.reverse or 0];
            DRR:AddPBLine(race, raceAdv, raceReverse, normal, advanced, reverse, container);
        end);
    end
end

function DRR:AddWakingShoresPB(container)
    DRR:AddPBZoneHeader(L["ZONE_WAKING_SHORES"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66679, advanced = 66692, reverse = 72052},
        {normal = 66710, advanced = 66712, reverse = 72700},
        {normal = 66721, advanced = 66722, reverse = 72705},
        {normal = 66725, advanced = 66726, reverse = 72706},
        {normal = 66732, advanced = 66733, reverse = 72734},
        {normal = 66727, advanced = 66728, reverse = 72707},
        {normal = 66777, advanced = 66778, reverse = 72739},
        {normal = 66786, advanced = 66787, reverse = 72740},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddOhnahranPlainsPB(container)
    DRR:AddPBZoneHeader(L["ZONE_OHNAHRAN_PLAINS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66835, advanced = 66836, reverse = 72801},
        {normal = 66877, advanced = 66878, reverse = 72802},
        {normal = 66880, advanced = 66881, reverse = 72803},
        {normal = 66885, advanced = 66886, reverse = 72805},
        {normal = 66921, advanced = nil, reverse = nil},
        {normal = 66933, advanced = nil, reverse = nil},
        {normal = 70710, advanced = 70711, reverse = 72807},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddAzureSpanPB(container)
    DRR:AddPBZoneHeader(L["ZONE_AZURE_SPAN"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 66946, advanced = 66947, reverse = 72796},
        {normal = 67002, advanced = 67003, reverse = 72799},
        {normal = 67031, advanced = 67032, reverse = 72794},
        {normal = 67296, advanced = 67297, reverse = 72800},
        {normal = 67565, advanced = 67566, reverse = 72795},
        {normal = 67741, advanced = 67742, reverse = 72797},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddThaldraszusPB(container)
    DRR:AddPBZoneHeader(L["ZONE_THALDRASZUS"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 67095, advanced = 67096, reverse = 72793},
        {normal = 69957, advanced = 69958, reverse = 72792},
        {normal = 70051, advanced = 70052, reverse = 72760},
        {normal = 70059, advanced = 70060, reverse = 72754},
        {normal = 70157, advanced = 70158, reverse = 72769},
        {normal = 70161, advanced = 70163, reverse = 72750},
    };
    DRR:AddPBLine_Table(races, container);
end

function DRR:AddForbiddenReachPB(container)
    DRR:AddPBZoneHeader(L["ZONE_FORBIDDENREACH"], container)
    DRR:AddPBHeader(container);
    local races = {
        {normal = 73017, advanced = 73018, reverse = 73019},
        {normal = 73020, advanced = 73023, reverse = 73024},
        {normal = 73025, advanced = 73027, reverse = 73028},
        {normal = 73029, advanced = 73030, reverse = 73032},
        {normal = 73033, advanced = 73034, reverse = 73052},
        {normal = 73061, advanced = 73062, reverse = 73065},
    };
    DRR:AddPBLine_Table(races, container);
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
    raceName:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(L["UI_PB_HEADER_PB_N"]);
    raceTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(L["UI_PB_HEADER_PB_A"]);
    raceTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(L["UI_PB_HEADER_PB_R"]);
    raceTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeR);

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(L["UI_PB_HEADER_GPB_A"]);
    raceGTimeA:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(L["UI_PB_HEADER_GPB_R"]);
    raceGTimeR:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeR);
end

function DRR:AddPBLine(race, raceAdv, raceReverse, normalTime, advancedTime, reverseTime, container)
    local formatedNormal = "-";
    local formatedAdvanced = "-";
    local formatedReverse = "-";

    if nil ~= normalTime then
        formatedNormal = L["RACE_TIME_FORMAT"](normalTime);
        if tonumber(race.gold) > tonumber(normalTime) then
            formatedNormal = "|cff13ef13"..formatedNormal.."|r";
        end
    end

    formatedNormal = formatedNormal.." / |cffffd700"..L["RACE_TIME_FORMAT"](race.gold).."|r";

    if nil ~= advancedTime then
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

    if nil ~= reverseTime then
        formatedReverse = L["RACE_TIME_FORMAT"](reverseTime);
        if nil ~= raceReverse then
            if tonumber(raceReverse.gold) > tonumber(reverseTime) then
                formatedReverse = "|cff13ef13"..formatedReverse.."|r";
            end
        end
    end

    if nil ~= raceReverse then
        formatedReverse = formatedReverse.." / |cffffd700"..L["RACE_TIME_FORMAT"](raceReverse.gold).."|r";
    end

    local lineGroup = AceGUI:Create("SimpleGroup");
    lineGroup:SetFullWidth(true);
    lineGroup:SetLayout("Flow");
    container:AddChild(lineGroup);

    local raceName = AceGUI:Create("Label");
    raceName:SetText(race.name);
    raceName:SetRelativeWidth(0.2);
    lineGroup:AddChild(raceName);

    local raceTimeN = AceGUI:Create("Label");
    raceTimeN:SetText(formatedNormal);
    raceTimeN:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeN);

    local raceTimeA = AceGUI:Create("Label");
    raceTimeA:SetText(formatedAdvanced);
    raceTimeA:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeA);

    local raceTimeR = AceGUI:Create("Label");
    raceTimeR:SetText(formatedReverse);
    raceTimeR:SetRelativeWidth(0.15);
    lineGroup:AddChild(raceTimeR);

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

    local gtimeR = nil;
    if nil ~= raceReverse then
        local gBest = DRR.db.global.guildpb[raceReverse.id];
        if nil ~= gBest then
            local player = UnitName("player")
            gtimeR = L["GUILD_BEST_TIME_FORMAT"](gBest.time, gBest.addedBy);
            if DRR.CURRENT_PLAYER == gBest.addedBy then
                gtimeR = "|cff13ef13"..gtimeR.."|r";
            end
        end
    end

    gtimeA = gtimeA or '-';
    gtimeR = gtimeR or '-';

    local raceGTimeA = AceGUI:Create("Label");
    raceGTimeA:SetText(gtimeA);
    raceGTimeA:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeA);

    local raceGTimeR = AceGUI:Create("Label");
    raceGTimeR:SetText(gtimeR);
    raceGTimeR:SetRelativeWidth(0.17);
    lineGroup:AddChild(raceGTimeR);
end

function DRR:OpenPBWindow()
    -- Don't open multiple windows
    if isOpened then return end

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(L["UI_PB_TITLE"]);
    frame:SetStatusText(L["UI_PB_GUILD_INFO"])
    frame:SetWidth(900);
    frame:SetHeight(675);
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