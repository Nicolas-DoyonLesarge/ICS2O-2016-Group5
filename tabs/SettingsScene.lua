-- ICS2O-2016-Group5
-- WorldSelect

-- Created by: Nicolas Doyon Lesarge
-- Created on: Jan-2017
-- Created for: ICS2O
local buttonToMainMenu
local musicButton


SettingsScene = class()

function SettingsScene:init()
    -- you can accept and set parameters here
    --sprite("Dropbox:Green Info Button")
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    buttonToMainMenu = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1))
    musicButton = Button("Dropbox:Green Info Button", vec2(WIDTH/2, HEIGHT/2))
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    buttonToMainMenu:draw()
    musicButton:draw()
    text("Music", vec2(WIDTH/8, HEIGHT/1.01))
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    buttonToMainMenu:touched(touch)
    musicButton:touched(touch)
    
    if (musicButton.selected == true) then
        
    end
    if (buttonToMainMenu.selected == true) then
        Scene.Change("mainMenu")
    end
end
