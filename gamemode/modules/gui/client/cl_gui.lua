-- GUI: Główne menu
local function ShowMainMenu()
    local frame = vgui.Create("DFrame")
    frame:SetTitle("Menu Główne")
    frame:SetSize(400, 300)
    frame:Center()
    frame:MakePopup()

    local characterButton = vgui.Create("DButton", frame)
    characterButton:SetText("Postacie")
    characterButton:Dock(TOP)
    characterButton.DoClick = function()
        ShowCharacterSelection()
    end

    local contentButton = vgui.Create("DButton", frame)
    contentButton:SetText("Content")
    contentButton:Dock(TOP)
    contentButton.DoClick = function()
        gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=123456789")
    end

    local infoButton = vgui.Create("DButton", frame)
    infoButton:SetText("Informacje")
    infoButton:Dock(TOP)
    infoButton.DoClick = function()
        gui.OpenURL("https://discord.gg/yourdiscordlink")
    end
end

hook.Add("InitPostEntity", "ShowMainMenu", ShowMainMenu)