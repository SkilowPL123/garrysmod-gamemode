util.AddNetworkString("CharacterData")
util.AddNetworkString("CreateCharacter")

local characters = {}

net.Receive("CreateCharacter", function(len, ply)
    local name = net.ReadString()
    local model = net.ReadString()

    -- Sprawdź limit postaci
    local limit = CHARACTER_LIMITS.default
    if ply:IsAdmin() then
        limit = CHARACTER_LIMITS.admin
    end

    if #characters[ply:SteamID()] >= limit then
        ply:ChatPrint("Osiągnąłeś limit postaci!")
        return
    end

    local character = {
        name = name,
        model = model,
        inventory = {}
    }

    characters[ply:SteamID()] = characters[ply:SteamID()] or {}
    table.insert(characters[ply:SteamID()], character)

    -- Zapisz postać w bazie danych
    SaveCharacter(ply:SteamID(), name, model, character.inventory, {})

    net.Start("CharacterData")
    net.WriteTable(character)
    net.Send(ply)
end)

hook.Add("PlayerInitialSpawn", "LoadPlayerCharacters", function(ply)
    LoadCharacter(ply:SteamID(), function(character)
        if character then
            characters[ply:SteamID()] = character
            net.Start("CharacterData")
            net.WriteTable(character)
            net.Send(ply)
        end
    end)
end)