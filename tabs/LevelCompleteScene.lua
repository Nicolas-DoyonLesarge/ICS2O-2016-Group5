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
local xPosition = WIDTH/math.random(2,3)
local xPosition1 = WIDTH/math.random(4,5)
local xPosition2 = WIDTH/math.random(6,7)
local xPosition3 = WIDTH/math.random(8,9)
local yPosition = HEIGHT/1.1 + 300
local totalPointsStart
local goldMedal
local silverMedal
local bronzeMedal

function LevelCompleteScene:init(x)
   homeButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/1.5, HEIGHT/8.9))
   levelSelectButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2, HEIGHT/8.9))
   restartButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/3, HEIGHT/8.9))
   totalPointsStart = totalPoints - totalPoints
   goldMedal = Button("Dropbox:cookieMedalGold", vec2(WIDTH/2, HEIGHT/1.9))
   silverMedal = Button("Dropbox:cookieMedalSilver", vec2(WIDTH/2, HEIGHT/1.9))
   bronzeMedal = Button("Dropbox:cookieMedalBronze", vec2(WIDTH/2, HEIGHT/1.9)) 
end

function LevelCompleteScene:draw()
    
    background(0, 151, 255, 255)
    
    sprite("Dropbox:cookies", xPosition, yPosition)
    sprite("Dropbox:cookies", xPosition1 + 400, yPosition + 200)
    sprite("Dropbox:cookies", xPosition2, yPosition + 300)
    sprite("Dropbox:cookies", xPosition3 + 700, yPosition + 400)
    sprite("Dropbox:cookies", xPosition + 200, yPosition + 500)
    
    yPosition = yPosition - 5
    
    if (yPosition < HEIGHT/10 - 1000) then
        yPosition = HEIGHT/1.1 + 300
        xPosition = WIDTH/math.random(2,9)
    end
    
   fill(78, 255, 0, 255)
   fontSize(50)
   font("AmericanTypewriter")
    
   text("Level Complete!", WIDTH/2, HEIGHT/1.1)
    
   if (totalPoints >= 495) then
      goldMedal:draw()
   end
   
   if (totalPoints >= 400) and (totalPoints < 495) then
      silverMedal:draw()
   end
    
   if (totalPoints >= 350) and (totalPoints < 400) then
      bronzeMedal:draw()
   end
    
   homeButton:draw()
   levelSelectButton:draw()
   restartButton:draw()
    
   totalPointsStart = totalPointsStart + 1
    
   text("You got "..math.floor(totalPointsStart).." points", WIDTH/2, HEIGHT/2)
    
   if (math.floor(totalPointsStart) >= math.floor(totalPoints)) then
        totalPointsStart = totalPointsStart - 1
   end
end

function LevelCompleteScene:touched(touch)
    homeButton:touched(touch)
    restartButton:touched(touch)
    levelSelectButton:touched(touch)
    goldMedal:touched(touch)
    silverMedal:touched(touch)
    bronzeMedal:touched(touch)
    
    if (homeButton.selected == true) then
        
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300
        
        if (levelSelected == 10) then
            levelSelected = 0
            worldSelected = 2
        end
        
        levelSelected = levelSelected + 1
        Scene.Change("mainGameScene")
        
        if (levelSelected == 6) and (worldSelected == 2) then
            Scene.Change("mainMenuScene")
        end
    end
    
    if (restartButton.selected == true) then
        Scene.Change("mainGameScene")
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300
    end
    
    if (levelSelectButton.selected == true) then
        if (worldSelected == 1) then
            Scene.Change("levelsWorld1")
            xPosition = WIDTH/math.random(2,3)
            xPosition1 = WIDTH/math.random(4,5)
            xPosition2 = WIDTH/math.random(6,7)
            xPosition3 = WIDTH/math.random(8,9)
            yPosition = HEIGHT/1.1 + 300
        end
        
        if (worldSelected == 2) then
            Scene.Change("levelsWorld2")
            xPosition = WIDTH/math.random(2,3)
            xPosition1 = WIDTH/math.random(4,5)
            xPosition2 = WIDTH/math.random(6,7)
            xPosition3 = WIDTH/math.random(8,9)
            yPosition = HEIGHT/1.1 + 300
        end
    end
end