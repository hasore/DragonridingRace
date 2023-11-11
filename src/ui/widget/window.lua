local addonName, addon = ...;
---@class DRR
local DRR = addon;

local AceGUI = LibStub("AceGUI-3.0");

local aspectRatio = 0.66;
local minWidth = 500;
local backdrop = {edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1, bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tileSize = 64, tile = true};
local backdrop_color = {0.3, 0.3, 0.3, 0.2};
local backdrop_border_color = {0, 0, 0, 1};

----------------
-- Main Frame --
----------------
--[[
	Events :
		OnClose

]]
do
	local Type = "DRRWindow"

	local function frameOnShow(this)
		this.obj:Fire("OnShow")
	end

	local function frameOnClose(this)
		this.obj:Fire("OnClose")
	end

	local function closeOnClick(this)
		PlaySound(799) -- SOUNDKIT.GS_TITLE_OPTION_EXIT
		this.obj:Hide()
	end

	local function frameOnMouseDown(this)
		AceGUI:ClearFocus()
	end

	local function titleOnMouseDown(this)
		this:GetParent():StartMoving()
		AceGUI:ClearFocus()
	end

	local function frameOnMouseUp(this)
		local frame = this:GetParent()
		frame:StopMovingOrSizing()
		local self = frame.obj
		local status = self.status or self.localstatus
		status.width = frame:GetWidth()
		status.height = frame:GetHeight()
		status.top = frame:GetTop()
		status.left = frame:GetLeft()
	end

	local function sizerseOnMouseDown(this)
		this:GetParent():StartSizing("BOTTOMRIGHT")
		AceGUI:ClearFocus()
	end

	local function sizersOnMouseDown(this)
		this:GetParent():StartSizing("BOTTOM")
		AceGUI:ClearFocus()
	end

	local function sizereOnMouseDown(this)
		this:GetParent():StartSizing("RIGHT")
		AceGUI:ClearFocus()
	end

	local function sizerOnMouseUp(this)
		this:GetParent():StopMovingOrSizing()
	end

	local function SetTitle(self,title)
		self.titletext:SetText(title)
	end

	local function SetStatusText(self,text)
		-- self.statustext:SetText(text)
	end

	local function Hide(self)
		self.frame:Hide()
	end

	local function Show(self)
		self.frame:Show()
	end

	local function OnAcquire(self)
		self.frame:SetParent(UIParent)
		self.frame:SetFrameStrata("FULLSCREEN_DIALOG")
		self:ApplyStatus()
		self:EnableResize(true)
		self:Show()
	end

	local function OnRelease(self)
		self.status = nil
		for k in pairs(self.localstatus) do
			self.localstatus[k] = nil
		end
	end

	-- called to set an external table to store status in
	local function SetStatusTable(self, status)
		assert(type(status) == "table")
		self.status = status
		self:ApplyStatus()
	end

	local function ApplyStatus(self)
		local status = self.status or self.localstatus
		local frame = self.frame
		self:SetWidth(status.width or 700)
		self:SetHeight(status.height or 500)
		if status.top and status.left then
			frame:SetPoint("TOP",UIParent,"BOTTOM",0,status.top)
			frame:SetPoint("LEFT",UIParent,"LEFT",status.left,0)
		else
			frame:SetPoint("CENTER",UIParent,"CENTER")
		end
	end

	local function OnWidthSet(self, width)
		local content = self.content
		local contentwidth = width - 34
		if contentwidth < 0 then
			contentwidth = 0
		end
		content:SetWidth(contentwidth)
		content.width = contentwidth
        self:SetHeight(width * aspectRatio);
	end


	local function OnHeightSet(self, height)
		local content = self.content
		local contentheight = height - 57
		if contentheight < 0 then
			contentheight = 0
		end
		content:SetHeight(contentheight)
		content.height = contentheight
	end

	local function EnableResize(self, state)
		local func = state and "Show" or "Hide"
		self.sizer_se[func](self.sizer_se)
		self.sizer_s[func](self.sizer_s)
		self.sizer_e[func](self.sizer_e)
	end

	local function Constructor()
		local frame = CreateFrame("Frame",nil,UIParent,"BackdropTemplate")
		local self = {}
		-- self.type = "Window"
        self.type = Type

		self.Hide = Hide
		self.Show = Show
		self.SetTitle =  SetTitle
		self.OnRelease = OnRelease
		self.OnAcquire = OnAcquire
		self.SetStatusText = SetStatusText
		self.SetStatusTable = SetStatusTable
		self.ApplyStatus = ApplyStatus
		self.OnWidthSet = OnWidthSet
		self.OnHeightSet = OnHeightSet
		self.EnableResize = EnableResize

		self.localstatus = {}

		self.frame = frame
		frame.obj = self
		frame:SetWidth(700)
		frame:SetHeight(700 * aspectRatio)
		frame:SetPoint("CENTER",UIParent,"CENTER",0,0)
		frame:EnableMouse()
		frame:SetMovable(true)
		frame:SetResizable(true)
		frame:SetFrameStrata("HIGH")
		frame:SetScript("OnMouseDown", frameOnMouseDown)
        frame:SetBackdrop(backdrop)
        frame:SetBackdropColor(unpack(backdrop_color))
        frame:SetBackdropBorderColor(unpack(backdrop_border_color))

		frame:SetScript("OnShow",frameOnShow)
		frame:SetScript("OnHide",frameOnClose)
		if frame.SetResizeBounds then -- WoW 10.0
			frame:SetResizeBounds(minWidth, minWidth * aspectRatio)
		end
		frame:SetToplevel(true)

		local dialogbg = frame:CreateTexture(nil, "BACKGROUND")
		dialogbg:SetTexture(137056) -- Interface\\Tooltips\\UI-Tooltip-Background
		dialogbg:SetPoint("TOPLEFT", 0, 0)
		dialogbg:SetPoint("BOTTOMRIGHT", 0, 0)
		dialogbg:SetVertexColor(0, 0, 0, .75)

        local iconFrame = CreateFrame("Frame", nil, frame);
        iconFrame:SetFrameStrata("TOOLTIP")
        iconFrame:SetFrameLevel(100)
        iconFrame:SetWidth(64);
        iconFrame:SetHeight(64);
        iconFrame:SetScript("OnMouseDown",titleOnMouseDown)
		iconFrame:SetScript("OnMouseUp", frameOnMouseUp)
        local icon = iconFrame:CreateTexture(nil, "OVERLAY", nil);
        icon:SetTexture("Interface\\AddOns\\"..addonName.."\\images\\logo_window.tga", "CLAMP", "CLAMPTOBLACKADDITIVE");
        icon:SetAllPoints(iconFrame);
        iconFrame.texture = icon;
        iconFrame:SetPoint("TOPLEFT", -18, 12);

		local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
		close:SetPoint("TOPRIGHT", -8, -5)
		close:SetScript("OnClick", closeOnClick)
        close:SetNormalTexture("Interface\\AddOns\\"..addonName.."\\images\\close.tga")
        close:SetHighlightTexture("Interface\\AddOns\\"..addonName.."\\images\\close.tga", "ADD")
        close:SetPushedTexture("Interface\\AddOns\\"..addonName.."\\images\\close.tga");
        close:SetSize(16, 16)
		self.closebutton = close
		close.obj = self

		local titletext = frame:CreateFontString(nil, "BORDER")
		titletext:SetFontObject(GameFontNormal)
		titletext:SetPoint("TOPLEFT", 12, -8)
		titletext:SetPoint("TOPRIGHT", -32, -8)
        titletext:SetTextColor(1, 1, 1, 0.8)
		self.titletext = titletext

		local title = CreateFrame("Frame", nil, frame, "BackdropTemplate")
        title:SetPoint("TOPLEFT", 1, -1)
		title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", -1, -26)
		title:EnableMouse()
		title:SetScript("OnMouseDown",titleOnMouseDown)
		title:SetScript("OnMouseUp", frameOnMouseUp)
        title:SetBackdrop(backdrop)
        title:SetBackdropColor(unpack(backdrop_color))
        title:SetBackdropBorderColor(unpack(backdrop_border_color))
		self.title = title

		local sizer_se = CreateFrame("Frame",nil,frame)
		sizer_se:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT",0,0)
		sizer_se:SetWidth(25)
		sizer_se:SetHeight(25)
		sizer_se:EnableMouse()
		sizer_se:SetScript("OnMouseDown",sizerseOnMouseDown)
		sizer_se:SetScript("OnMouseUp", sizerOnMouseUp)
		self.sizer_se = sizer_se

		local line1 = sizer_se:CreateTexture(nil, "BACKGROUND")
		self.line1 = line1
		line1:SetWidth(14)
		line1:SetHeight(14)
		line1:SetPoint("BOTTOMRIGHT", -8, 8)
		line1:SetTexture(137057) -- Interface\\Tooltips\\UI-Tooltip-Border
		local x = 0.1 * 14/17
		line1:SetTexCoord(0.05 - x, 0.5, 0.05, 0.5 + x, 0.05, 0.5 - x, 0.5 + x, 0.5)

		local line2 = sizer_se:CreateTexture(nil, "BACKGROUND")
		self.line2 = line2
		line2:SetWidth(8)
		line2:SetHeight(8)
		line2:SetPoint("BOTTOMRIGHT", -8, 8)
		line2:SetTexture(137057) -- Interface\\Tooltips\\UI-Tooltip-Border
		x = 0.1 * 8/17
		line2:SetTexCoord(0.05 - x, 0.5, 0.05, 0.5 + x, 0.05, 0.5 - x, 0.5 + x, 0.5)

		local sizer_s = CreateFrame("Frame",nil,frame)
		sizer_s:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT",-25,0)
		sizer_s:SetPoint("BOTTOMLEFT",frame,"BOTTOMLEFT",0,0)
		sizer_s:SetHeight(25)
		sizer_s:EnableMouse()
		sizer_s:SetScript("OnMouseDown",sizersOnMouseDown)
		sizer_s:SetScript("OnMouseUp", sizerOnMouseUp)
		self.sizer_s = sizer_s

		local sizer_e = CreateFrame("Frame",nil,frame)
		sizer_e:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT",0,25)
		sizer_e:SetPoint("TOPRIGHT",frame,"TOPRIGHT",0,0)
		sizer_e:SetWidth(25)
		sizer_e:EnableMouse()
		sizer_e:SetScript("OnMouseDown",sizereOnMouseDown)
		sizer_e:SetScript("OnMouseUp", sizerOnMouseUp)
		self.sizer_e = sizer_e

		--Container Support
		local content = CreateFrame("Frame", nil, frame)
		self.content = content
		content.obj = self
		content:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -25)
		content:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -5, 5)

		AceGUI:RegisterAsContainer(self)
		return self
	end

	AceGUI:RegisterWidgetType(Type, Constructor, 1)
end
