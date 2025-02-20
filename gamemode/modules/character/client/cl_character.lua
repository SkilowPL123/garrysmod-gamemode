-- Klient: Charakter
net.Receive("CharacterData", function()
    local data = net.ReadTable()
    print("Otrzymano dane postaci:", data)
    -- Wyświetl GUI ładowania postaci
    ShowCharacterSelection(data)
end)

function CreateCharacter(name, model)
    net.Start("CreateCharacter")
    net.WriteString(name)
    net.WriteString(model)
    net.SendToServer()
end

-- Wyświetl GUI tworzenia postaci
function ShowCharacterCreation()
    -- Kod GUI tworzenia postaci
end

-- Wyświetl GUI ładowania postaci
function ShowCharacterSelection(characters)
    -- Kod GUI ładowania postaci
end