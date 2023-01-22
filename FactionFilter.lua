

local function FactionFilter_OnEvent(self, event, ...)
    if event == "MERCHANT_SHOW" then
        local vendorName = UnitName("npc")
        local vendorFaction = UnitFactionGroup("npc")
        print(string.format("Welcome to %s's shop! They are part of the %s faction", vendorName, vendorFaction))
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("MERCHANT_SHOW")
frame:SetScript("OnEvent", FactionFilter_OnEvent)

