-- Klient: Charakter
net.Receive("CharacterData", function()
    local data = net.ReadTable()
    print("Otrzymano dane postaci:", data)
end)

function CreateCharacter(name, model)
    net.Start("CreateCharacter")
    net.WriteString(name)
    net.WriteString(model)
    net.SendToServer()
end