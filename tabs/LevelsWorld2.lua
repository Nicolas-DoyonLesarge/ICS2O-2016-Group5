-- ICS2O-2016-Group5
-- LevelsWorld2

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O
local buttonToMainMenu
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
    buttonToMainMenu = Button("Dropbox:Blue Return Button", vec2(WIDTH/1.1, HEIGHT/1.1))
    buttonToWorldSelect = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1)) 
    level11 = Button("Dropbox:Blue Forward Button", vec2(WIDTH/10, HEIGHT/2))
    level12 = Button("Dropbox:Blue Forward Button", vec2(WIDTH/3.35, HEIGHT/2))
    level13 = Button("Dropbox:Blue Forward Button", vec2(WIDTH/2, HEIGHT/2))
    level14 = Button("Dropbox:Blue Forward Button", vec2(WIDTH/1.43, HEIGHT/2))
    level15 = Button("Dropbox:Blue Forward Button", vec2(WIDTH/1.1, HEIGHT/2))
end

function LevelsWorld2:draw()
    -- Codea does not automatically call this method
    level11:draw()
    level12:draw()
    level13:draw()
    level14:draw()
    level15:draw()
    buttonToWorldSelect:draw()
    buttonToMainMenu:draw()
end

function LevelsWorld2:touched(touch)
    -- Codea does not automatically call this method
    level11:touched(touch)
    level12:touched(touch)
    level13:touched(touch)
    level14:touched(touch)
    level15:touched(touch)
    buttonToWorldSelect:touched(touch)
    buttonToMainMenu:touched(touch)
    
    if (buttonToMainMenu.selected == true) then
        Scene.Change("mainMenuScene")
    end
    
    if (buttonToWorldSelect.selected == true) then
        Scene.Change("worldSelectScene")  
        end
    
end