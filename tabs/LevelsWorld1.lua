-- ICS2O-2016-Group5
-- LevelsWorld1

-- Created by: Nicolas Doyon Lesarge
-- Created on: Dec-2016
-- Created for: ICS2O

LevelsWorld1 = class()

local backButtonToMainMenu
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

function LevelsWorld1:init()
    -- you can accept and set parameters here
    --sprite("Project:Blue Back Circle Button")
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    --sprite("Dropbox:levelSelect")
    
    level1 = Button("Dropbox:levelSelect", vec2(WIDTH/10, HEIGHT/1.5))
    level2 = Button("Dropbox:levelSelect", vec2(WIDTH/3.35, HEIGHT/1.5))
    level3 = Button("Dropbox:levelSelect", vec2(WIDTH/2, HEIGHT/1.5))
    level4 = Button("Dropbox:levelSelect", vec2(WIDTH/1.43, HEIGHT/1.5))
    level5 = Button("Dropbox:levelSelect", vec2(WIDTH/1.1, HEIGHT/1.5))
    level6 = Button("Dropbox:levelSelect", vec2(WIDTH/10, HEIGHT/3))
    level7 = Button("Dropbox:levelSelect", vec2(WIDTH/3.35, HEIGHT/3))
    level8 = Button("Dropbox:levelSelect", vec2(WIDTH/2, HEIGHT/3))
    level9 = Button("Dropbox:levelSelect", vec2(WIDTH/1.43, HEIGHT/3))
    level10 = Button("Dropbox:levelSelect", vec2(WIDTH/1.1, HEIGHT/3))
    backButtonToWorld = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/10, HEIGHT/1.1))
    backButtonToMainMenu = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/1.1, HEIGHT/1.1))
end

function LevelsWorld1:draw()
    -- Codea does not automatically call this method
    background(127, 127, 127, 255)
    sprite("Dropbox:levelSelectScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    font("AmericanTypewriter-Bold")
    fontSize(100)
    fill(0, 71, 255, 255)
    
    text("1", WIDTH/10, HEIGHT/1.5)
    text("2", WIDTH/3.35, HEIGHT/1.5)
    text("3", WIDTH/2, HEIGHT/1.5)
    text("4", WIDTH/1.43, HEIGHT/1.5)
    text("5", WIDTH/1.1, HEIGHT/1.5)
    text("6", WIDTH/10, HEIGHT/3)
    text("7", WIDTH/3.35, HEIGHT/3)
    text("8", WIDTH/2, HEIGHT/3)
    text("9", WIDTH/1.43, HEIGHT/3)
    text("10", WIDTH/1.1, HEIGHT/3)
    text("Level Select", WIDTH/2, HEIGHT/1.1)
    
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
    backButtonToMainMenu:draw()
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
    backButtonToMainMenu:touched(touch)
    
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
    
    if (level6.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 6
    end
    
    if (level7.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 7
    end
    
    if (level8.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 8
    end
    
    if (level9.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 9
    end
    
    if (level10.selected == true) then
        Scene.Change("mainGameScene")
        levelSelected = 10
    end
    
    if (backButtonToMainMenu.selected == true) then
        Scene.Change("mainMenuScene")
    end
    
    if (backButtonToWorld.selected == true) then
        Scene.Change("worldSelectScene")
    end
end