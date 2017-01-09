-- ICS2O-2016-Group5
-- LevelsWorld1

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O

local backButtonToWorld
local level1
local level2
local level3
local level4
local level5
local level6
local level7
local level8
local level9
local level10

LevelsWorld1 = class()

function LevelsWorld1:init()
    -- you can accept and set parameters here
    --sprite("Project:Blue Back Circle Button")
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    level1 = Button("Project:Blue Forward Button", vec2(WIDTH/2, HEIGHT/2))
    backButtonToWorld = Button("Project:Blue Back Circle Button", vec2(100, 700))
end

function LevelsWorld1:draw()
    -- Codea does not automatically call this method
    level1:draw()
    backButtonToWorld:draw()
end

function LevelsWorld1:touched(touch)
    -- Codea does not automatically call this method
    level1:touched(touch)
    backButtonToWorld:touched(touch)
    
    if (backButtonToWorld.selected == true) then
        Scene.Change("worldSelect")
    end
end