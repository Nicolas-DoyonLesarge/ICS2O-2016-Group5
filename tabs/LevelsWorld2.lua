-- ICS2O-2016-Group5
-- LevelsWorld2

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O

local buttonToMainMenu
local buttonToWorldSelect
local level1
local level2
local level3
local level4
local level5

LevelsWorld2 = class()

function LevelsWorld2:init()
    -- you can accept and set parameters here
    noFill()
    noSmooth()
    noStroke()
    pushStyle()

    buttonToMainMenu = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/1.1, HEIGHT/1.1))
    buttonToWorldSelect = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1)) 
    level1 = Button("Dropbox:levelSelect", vec2(WIDTH/10, HEIGHT/2))
    level2 = Button("Dropbox:levelSelect", vec2(WIDTH/3.35, HEIGHT/2))
    level3 = Button("Dropbox:levelSelect", vec2(WIDTH/2, HEIGHT/2))
    level4 = Button("Dropbox:levelSelect", vec2(WIDTH/1.43, HEIGHT/2))
    level5 = Button("Dropbox:levelSelect", vec2(WIDTH/1.1, HEIGHT/2))
end

function LevelsWorld2:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:levelSelectScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    level1:draw()
    level2:draw()
    level3:draw()
    level4:draw()
    level5:draw()
    buttonToWorldSelect:draw()
    buttonToMainMenu:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(100)
    fill(0, 71, 255, 255)
    
    text("1", WIDTH/10, HEIGHT/2)
    text("2", WIDTH/3.35, HEIGHT/2)
    text("3", WIDTH/2, HEIGHT/2)
    text("4", WIDTH/1.43, HEIGHT/2)
    text("5", WIDTH/1.1, HEIGHT/2)
    text("Level Select", WIDTH/2, HEIGHT/1.1)
end

function LevelsWorld2:touched(touch)
    -- Codea does not automatically call this method
    level1:touched(touch)
    level2:touched(touch)
    level3:touched(touch)
    level4:touched(touch)
    level5:touched(touch)
    buttonToWorldSelect:touched(touch)
    buttonToMainMenu:touched(touch)
    
    if (level1.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 1
    end
    
    if (level2.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 2
    end
    
    if (level3.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 3
    end
    
    if (level4.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 4
    end
    
    if (level5.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 5
    end
    
    if (buttonToMainMenu.selected == true) then
        Scene.Change("mainMenuScene")
    end
    
    if (buttonToWorldSelect.selected == true) then
        Scene.Change("worldSelectScene")  
    end   
end