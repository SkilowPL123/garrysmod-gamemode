util.AddNetworkString("CharacterData")
util.AddNetworkString("CreateCharacter")

local characters = {}

net.Receive("CreateCharacter", function(len, ply)
    local name = net.ReadString()
    local model = net.ReadString()

    local character = {
        name = name,
        model = model,
        inventory = {}
    }

    characters[ply:SteamID()] = character

    -- Zapisz postać w bazie danych
    SaveCharacter(ply:SteamID(), name, model, character.inventory)

    net.Start("CharacterData")
    net.WriteTable(character)
    net.Send(ply)
end)