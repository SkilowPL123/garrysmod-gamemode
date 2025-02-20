GM.Name = "HL2RP"
GM.Author = "SkilowPL123"
GM.Email = "noreply@example.com"
GM.Website = "https://example.com"

-- Ustawienia gamemode'u
function GM:Initialize()
    print("Gamemode Shared Initialized")
end

-- Dodaj pliki klienta
local modules = file.Find("gamemode/modules/*", "LUA")
for _, module in ipairs(modules) do
    if file.Exists("gamemode/modules/" .. module .. "/client/cl_" .. module .. ".lua", "LUA") then
        AddCSLuaFile("gamemode/modules/" .. module .. "/client/cl_" .. module .. ".lua")
    end
end