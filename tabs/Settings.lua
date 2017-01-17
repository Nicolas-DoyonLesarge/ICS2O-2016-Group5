-- ICS2O-2016-Group5
-- WorldSelect

-- Created by: Nicolas Doyon Lesarge
-- Created on: Jan-2017
-- Created for: ICS2O
local buttonToMainMenu

Settings = class()

function Settings:init()
    -- you can accept and set parameters here
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    buttonToMainMenu = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1))
end

function Settings:draw()
    -- Codea does not automatically call this method
    buttonToMainMenu:draw()
    text("Music", vec2(WIDTH/8, HEIGHT/1.01))
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    buttonToMainMenu:touched(touch)
    
    if (buttonToMainMenu.selected == true) then
        Scene.Change("mainMenu")
    end
end
