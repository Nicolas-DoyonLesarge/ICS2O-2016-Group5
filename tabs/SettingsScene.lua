-- ICS2O-2016-Group5
-- WorldSelect

-- Created by: Nicolas Doyon Lesarge
-- Created on: Jan-2017
-- Created for: ICS2O
local buttonToMainMenu
local musicButton

SettingsScene = class()

-- local variables to this scene
local backButton

-- Use this function to perform your initial setup for this scene
function SettingsScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    --sprite("Dropbox:Blue Back Circle Button")
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    background(28, 0, 255, 255)
    
    -- do your drawing here
    backButton:draw()
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("mainMenuScene")
    end    
end