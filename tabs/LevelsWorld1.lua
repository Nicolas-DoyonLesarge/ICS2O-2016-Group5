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
    
    level1 = Button("Project:Blue Forward Button", vec2(WIDTH/10, HEIGHT/1.5))
    level2 = Button("Project:Blue Forward Button", vec2(WIDTH/3.35, HEIGHT/1.5))
    level3 = Button("Project:Blue Forward Button", vec2(WIDTH/2, HEIGHT/1.5))
    level4 = Button("Project:Blue Forward Button", vec2(WIDTH/1.43, HEIGHT/1.5))
    level5 = Button("Project:Blue Forward Button", vec2(WIDTH/1.1, HEIGHT/1.5))
    level6 = Button("Project:Blue Forward Button", vec2(WIDTH/10, HEIGHT/3))
    level7 = Button("Project:Blue Forward Button", vec2(WIDTH/3.35, HEIGHT/3))
    level8 = Button("Project:Blue Forward Button", vec2(WIDTH/2, HEIGHT/3))
    level9 = Button("Project:Blue Forward Button", vec2(WIDTH/1.43, HEIGHT/3))
    level10 = Button("Project:Blue Forward Button", vec2(WIDTH/1.1, HEIGHT/3))
    backButtonToWorld = Button("Project:Blue Back Circle Button", vec2(100, 700))
end

function LevelsWorld1:draw()
    -- Codea does not automatically call this method
    level1:draw()
    level2:draw()
    level3:draw()
    level4:draw()
    level5:draw()
    level6:draw()
    level7:draw()
    level8:draw()
    level9:draw()
    level10:draw()
    backButtonToWorld:draw()
end

function LevelsWorld1:touched(touch)
    -- Codea does not automatically call this method
    level1:touched(touch)
    level2:touched(touch)
    level3:touched(touch)
    level4:touched(touch)
    level5:touched(touch)
    level6:touched(touch)
    level7:touched(touch)
    level8:touched(touch)
    level9:touched(touch)
    level10:touched(touch)
    backButtonToWorld:touched(touch)
    
    if (backButtonToWorld.selected == true) then
        Scene.Change("worldSelect")
    end
end