-- ICS2O-2016-Group5
-- LevelsWorld2

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O
local buttonToWorldSelect
local level11
local level12
local level13
local level14
local level15

LevelsWorld2 = class()

function LevelsWorld2:init()
    -- you can accept and set parameters here
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    sprite("Project:Blue Back Circle Button")
    buttonToWorldSelect = Button("Project:Blue Back Circle Button", vec2(100, 700)) 
    level11 = Button("Project:Blue Forward Button", vec2(WIDTH/2, HEIGHT/2))
end

function LevelsWorld2:draw()
    -- Codea does not automatically call this method
    level11:draw()
    buttonToWorldSelect:draw()
    
end

function LevelsWorld2:touched(touch)
    -- Codea does not automatically call this method
    level11:touched(touch)
    buttonToWorldSelect:touched(touch)
    
    
    
    if (buttonToWorldSelect.selected == true) then
        Scene.Change("worldSelect")  
        end
    
end
