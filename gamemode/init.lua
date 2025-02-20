AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

-- Inicjalizacja serwera
function GM:Initialize()
    print("Gamemode Server Initialized")
    -- Inicjalizacja bazy danych
    include("gamemode/database/sv_database.lua")
end

-- Załaduj moduły serwera
local modules = file.Find("gamemode/modules/*", "LUA")
for _, module in ipairs(modules) do
    if file.Exists("gamemode/modules/" .. module .. "/server/sv_" .. module .. ".lua", "LUA") then
        include("gamemode/modules/" .. module .. "/server/sv_" .. module .. ".lua")
    end
end