-- Main

-- Created by: James Lee
-- Created on: Jan 2017
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the scene after the user gets rhe  Main code to get the game started

LevelCompleteScene = class()

local homeButton
local levelSelectButton
local restartButton

function LevelCompleteScene:init(x)
   homeButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/1.5, HEIGHT/3))
   levelSelectButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2, HEIGHT/3))
   restartButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/3, HEIGHT/3))
end

function LevelCompleteScene:draw()
    
   background(255, 255, 255, 255)
    
   fill(255, 255, 255, 255)
   fontSize(50)
   font("AmericanTypewriter")
    
   text("Level Complete!", WIDTH/2, HEIGHT/1.1)
    
   if (totalPoints > 495) then
      sprite("Dropbox:Image 11", WIDTH/2, HEIGHT/1.9)
   end
   
   if (totalPoints > 400) and (totalPoints < 495) then
      sprite("Dropbox:Image 12", WIDTH/2, HEIGHT/1.9)
   end
    
   if (totalPoints > 350) and (totalPoints < 400) then
      sprite("Dropbox:Image 13", WIDTH/2, HEIGHT/1.9)
   end
    
   homeButton:draw()
   levelSelectButton:draw()
   restartButton:draw()
    
end

function LevelCompleteScene:touched(touch)
    homeButton:touched(touch)
    restartButton:touched(touch)
    levelSelectButton:touched(touch)
    
    if (homeButton.selected == true) then
        
        if (levelSelected == 10) then
            levelSelected = 0
            worldSelected = 2
        end
        
        levelSelected = levelSelected + 1
        Scene.Change("mainGameScene")
    end
    
    if (restartButton.selected == true) then
        Scene.Change("mainGameScene")
    end
    
    if (levelSelectButton.selected == true) then
        if (worldSelected == 1) then
            Scene.Change("levelsWorld1")
        end
        
        if (worldSelected == 2) then
            Scene.Change("levelsWorld2")
        end
    end
end