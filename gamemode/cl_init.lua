include("shared.lua")

-- Inicjalizacja klienta
function GM:Initialize()
    print("Gamemode Client Initialized")
end

-- Załadowanie HUD
function GM:HUDPaint()
    -- Przykładowy HUD
    draw.SimpleText("HL2RP", "Trebuchet24", ScrW() / 2, ScrH() / 2, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

-- Załaduj moduły klienta
local modules = file.Find("gamemode/modules/*", "LUA")
for _, module in ipairs(modules) do
    if file.Exists("gamemode/modules/" .. module .. "/client/cl_" .. module .. ".lua", "LUA") then
        include("gamemode/modules/" .. module .. "/client/cl_" .. module .. ".lua")
    end
end