local addonName, addon = ...;
---@class DRR
local DRR = addon;

local pinSize = 24;
local freePins = {};

---@class Pin
---@field frame Frame | nil
---@field texture Texture | nil
---@field animation AnimationGroup | nil
---@field position {x: number, y: number}
local Pin = {
    frame = nil,
    texture = nil,
    animation = nil,
    position = {
        x = 0,
        y = 0,
    },

    PlaceYourself = function (self, parentFrame)
        self.frame:SetPoint("CENTER", parentFrame, "TOPLEFT", self.position.x * parentFrame:GetWidth(), -self.position.y * parentFrame:GetHeight());
    end,
};
Pin.__index = Pin;

---@return Pin
function GetPin()
    if table.getn(freePins) > 0 then
        return table.remove(freePins);
    end

    local pin = {};
    setmetatable(pin, Pin);

    return pin;
end

---@class Map
---@field mapFrame Frame | nil
---@field map Texture | nil
local Map = {
    mapFrame = nil,
    map = nil,
    pins = {},

    ---@param x number between 0 and 1 (relative position in region map coordinates)
    ---@param y number between 0 and 1 (relative position in region map coordinates)
    AddPin = function (self, x, y)
        local pin = GetPin();
        pin.position = {x = x, y = y};
        pin.frame = CreateFrame("Button", nil, self.mapFrame);
        pin.frame:SetFrameStrata("FULLSCREEN_DIALOG");
        pin.frame:SetNormalTexture("Interface\\AddOns\\"..addonName.."\\images\\flag.tga");
        pin.frame:GetNormalTexture():SetTexCoord(0, 0.5, 0, 1);
        pin.frame:SetHighlightTexture("Interface\\AddOns\\"..addonName.."\\images\\flag.tga");
        pin.frame:GetHighlightTexture():SetTexCoord(0.5, 1, 0, 1);
        pin.frame:SetSize(pinSize, pinSize);
        pin:PlaceYourself(self.mapFrame);
        
        pin.animation = pin.frame:CreateAnimationGroup();
        pin.animation:SetLooping("REPEAT");
        local step1 = pin.animation:CreateAnimation("Rotation");
        step1:SetDegrees(30);
        step1:SetDuration(0.5);
        step1:SetSmoothing("OUT");
        step1:SetOrder(1);
        local step2 = pin.animation:CreateAnimation("Rotation");
        step2:SetDegrees(-60);
        step2:SetDuration(1);
        step2:SetSmoothing("OUT");
        step2:SetOrder(2);
        local step3 = pin.animation:CreateAnimation("Rotation");
        step3:SetDegrees(30);
        step3:SetDuration(0.5);
        step3:SetOrder(3);
        pin.animation:Stop();

        pin.frame:SetScript("OnEnter", function (self)
            pin.animation:Play();
        end);

        pin.frame:SetScript("OnLeave", function (self)
            pin.animation:Stop();
        end);
        
        pin.frame:SetScript("OnClick", function (self, button, down)
            print("Clicked pin at", x, y);
        end);
        table.insert(self.pins, pin);
    end,
};
Map.__index = Map;

---Create a map frame
---@param container Frame
---@param mapID number
---@return Map
function DRR:UI_CreateMap(container, mapID)
    local map = {};
    setmetatable(map, Map);

    map.mapFrame = CreateFrame("Frame", nil, container);
    map.mapFrame:SetFrameStrata("FULLSCREEN_DIALOG");
    map.mapFrame:SetAllPoints(container);
    map.map = map.mapFrame:CreateTexture(nil, "OVERLAY", nil);
    map.map:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\zones\\"..mapID..".tga");
    map.map:SetTexCoord(0, 0.75, 0, 1);
    map.map:SetAllPoints(map.mapFrame);
    map.map:SetAlpha(0.6);

    map.mapFrame:SetScript("OnSizeChanged", function (self)
        for _, pin in pairs(map.pins) do
            pin:PlaceYourself(map.mapFrame);
        end
    end);

    map:AddPin(0.5, 0.5);

    return map;
end
