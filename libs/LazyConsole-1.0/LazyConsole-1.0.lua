---@class LazyConsole-1.0
local LazyConsole = LibStub:NewLibrary("LazyConsole-1.0", 1);
if not LazyConsole then return end; -- already loaded

local AceGUI = LibStub("AceGUI-3.0");
local frame = AceGUI:Create("Window");
frame:SetTitle("LazyConsole");
frame:SetWidth(600);
frame:SetHeight(600);
frame:SetPoint("TOPLEFT", 0, -10);
frame:EnableResize(false);
frame:SetCallback("OnClose", function(widget)
    frame:Hide();
end)
frame:SetLayout("Flow");
frame:Hide();

local logbox = AceGUI:Create("MultiLineEditBox");
logbox:SetLabel(nil);
logbox:DisableButton(true);
logbox:SetFullWidth(true);
logbox:SetHeight(520);
logbox:SetDisabled(true);
logbox.editBox:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE");

local function table_to_string(tbl, incr)
    local spaces = "";
    incr = incr or 0;
    for i = 0, incr do
        spaces = spaces .. "    ";
    end
    local result = "{"
    for k, v in pairs(tbl) do
        result = result.."\n".. spaces;
        -- Check the key type (ignore any numerical keys - assume its an array)
        if type(k) == "string" then
            result = result.."[\""..k.."\"]".." = ";
        end

        -- Check the value type
        if type(v) == "table" then
            result = result..table_to_string(v, incr + 1);
        elseif type(v) == "boolean" or type(v) == "number" then
            result = result..tostring(v);
        elseif type(v) == "string" then
            result = result.."\""..v.."\"";
        else
            result = result.."<unknown type>";
        end
        result = result..",";
    end
    -- Remove leading commas from the result
    if result ~= "{" then
        result = result:sub(1, result:len()-1) .. "\n";
    end
    return result..spaces:sub(1, -4).."}"
end

local function doPrint(message, color, file, line)
    if nil == message then
        return;
    end

    if nil ~= file and nil ~= line then
        local time = date("%H:%M");
        logbox.editBox:Insert("\n\n[" .. time .. "] " .. file .. ":" .. line .. "\n");
    end

    if "string" == type(message) then
        message = "|c".. color .. message .."|r";
    elseif "table" == type(message) then
        message = "|c".. color .. table_to_string(message) .."|r";
    end
    
    logbox.editBox:Insert(message);
    frame:Show();
end

local inputbox = AceGUI:Create("EditBox");
inputbox:SetLabel(nil);
inputbox:SetFullWidth(true);
inputbox:SetHeight(20);
inputbox:SetCallback("OnEnterPressed", function(widget, event, text)
    if #text < 1 then return end

    local func, err = loadstring(text);
    if nil ~= func then
        local success, result = pcall(func);
        result = result or "<no result>";
        if success then
            doPrint(result, "FF00FF00", text, "");
        else
            doPrint(result, "FFFF0000", text, "");
        end
    else
        doPrint(err, "FFFF0000", text, "");
    end
    widget:SetText("");
end);

frame:AddChild(logbox);
frame:AddChild(inputbox);

function LazyConsole:OpenConsole()
    frame:Show();
end

function LazyConsole:Log(message, color, debugstackOffset)
    local line, file = nil, nil;
    if nil == color then
        color = "FFF1F1F1";
    end
    debugstackOffset = debugstackOffset or 0;
    local caller = debugstack(2 + debugstackOffset, 1, 0);
    if nil ~= caller then
        file = string.match(caller, '"@(.+)"');
        line = string.match(caller, ":([0-9]+):");
    end

    doPrint(message, color, file, line);
end

function LazyConsole:Test(num)
    return 2 * num;
end


_G["LazyConsole"] = LazyConsole;
