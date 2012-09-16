if not (IsAddOnLoaded("ElvUI") or IsAddOnLoaded("Tukui")) or not IsAddOnLoaded("Incoming") then return end

local U = unpack(select(2,...))

local name = 'IncomingSkin'
local function SkinIncoming(self)
	U.SkinFrame(LocationMessageView)

	local buttons = {
		"Incoming1",
		"Incoming2",
		"Incoming3",
		"Incoming4",
		"Incoming5",
		"AllClear",
		"Incoming",
		"SendMore",
		}

	for _, button in pairs(buttons) do
		U.SkinButton(_G[button])
	end	
	
	LocationMessageView:SetWidth(99)
	LocationMessageView:SetHeight(130)
	Incoming5:SetWidth(29)

	Incoming1:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 3, -3)
	Incoming2:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 19, -3)
	Incoming3:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 35, -3)
	Incoming4:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 51, -3)
	Incoming5:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 67, -3)
	AllClear:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 3, -40)
	Incoming:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 3, -70)
	SendMore:Point("TOPLEFT", LocationMessageView, "TOPLEFT", 3, -100)
	
end

U.RegisterSkin(name,SkinIncoming)
