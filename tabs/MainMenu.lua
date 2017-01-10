-- ICS2O-2016-Group5
-- MainMenu

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O
local startButton


MainMenu = class()

function MainMenu:init()
    -- you can accept and set parameters here
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    --sprite("Project:Blue Info Button")
    startButton = Button ("Project:Blue Info Button", vec2(WIDTH/2, HEIGHT/2))
    
end

function MainMenu:draw()
    -- Codea does not automatically call this method
    startButton:draw()
end

function MainMenu:touched(touch)
    -- Codea does not automatically call this method
    startButton:touched(touch)
    
    if (startButton.selected == true) then
        Scene.Change("worldSelect")
    end
end
