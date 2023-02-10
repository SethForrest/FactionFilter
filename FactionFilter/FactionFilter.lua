
local frame = CreateFrame("Frame")

function frame:OnEvent(event, ...)
    self[event](self, event, ...)
end

function frame:MERCHANT_SHOW(event)
    vendorName = UnitName("npc")
    vendorFaction = UnitFactionGroup("npc")
    print(string.format("Welcome to %s's shop! They are part of the %s faction", vendorName, vendorFaction))
end

frame:RegisterEvent("MERCHANT_SHOW")
frame:SetScript("OnEvent", frame.OnEvent)

