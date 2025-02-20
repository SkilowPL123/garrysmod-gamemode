-- GUI: Charakter
local function CreateCharacterMenu()
    local frame = vgui.Create("DFrame")
    frame:SetTitle("Stwórz Nową Postać")
    frame:SetSize(300, 200)
    frame:Center()
    frame:MakePopup()

    local nameLabel = vgui.Create("DLabel", frame)
    nameLabel:SetText("Imię Postaci:")
    nameLabel:Dock(TOP)

    local nameEntry = vgui.Create("DTextEntry", frame)
    nameEntry:Dock(TOP)

    local modelLabel = vgui.Create("DLabel", frame)
    modelLabel:SetText("Model Postaci:")
    modelLabel:Dock(TOP)

    local modelEntry = vgui.Create("DTextEntry", frame)
    modelEntry:Dock(TOP)

    local createButton = vgui.Create("DButton", frame)
    createButton:SetText("Stwórz")
    createButton:Dock(BOTTOM)
    createButton.DoClick = function()
        local name = nameEntry:GetValue()
        local model = modelEntry:GetValue()
        CreateCharacter(name, model)
        frame:Close()
    end
end

hook.Add("InitPostEntity", "ShowCharacterCreationMenu", CreateCharacterMenu)