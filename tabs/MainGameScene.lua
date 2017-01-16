-- ICS2O-2016-Group5
-- Main game

-- Created by: James Lee
-- Created on: Jan 2017
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the main game

MainGameScene = class()

-- Variables local to this tab
local hintButton
local resetButton
local imageHint
local gameTime
local totalPoints = 500
local totalPointsToStart

local wordPositions = {}
local width1 = WIDTH/4.9
local width2 = WIDTH/1.4

function MainGameScene:init()
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    --sprite("Project:Blue Redo Button")
    hintButton = Button("Dropbox:Blue Info Button", vec2(WIDTH/1.1, HEIGHT/9.1))
    resetButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/1.1, HEIGHT/1.1))
    imageHint = SpriteObject("Cargo Bot:Codea Icon", vec2(WIDTH/2, HEIGHT/1.6))
    
    -- scene setup code here
    gameTime = ElapsedTime - 1
end

function MainGameScene:draw()
    
   background(0, 0, 0, 255)
   sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
   sprite("Cargo Bot:Level Select Frame", WIDTH/2.3, HEIGHT/7, WIDTH/1.1, HEIGHT/4)
    
   hintButton:draw()
   resetButton:draw()
   imageHint:draw()
    
    if(gameTime + 5 < ElapsedTime)then
       totalPoints = totalPoints - 0.018
       print(totalPoints)
   end

   fill(255, 24, 0, 255)
   fontSize(30)
   font("AmericanTypewriter-Bold")
   ElapsedTime = math.floor(ElapsedTime/1)
    
   text("Time:"..tostring(math.floor(ElapsedTime - gameTime)), WIDTH/9.1, HEIGHT/1.12)
    
   fill(0, 0, 0, 255)
   fontSize(30)
   font("AmericanTypewriter-Bold")
    
   text("Level:"..tostring(levelSelected), WIDTH/9.1, HEIGHT/1.2)
    
   fill(0, 0, 0, 255)
   fontSize(30)
   font("AmericanTypewriter-Bold")
    
   text("World:"..tostring(worldSelected), WIDTH/9.1, HEIGHT/1.3)
    
   fill(0, 34, 255, 255)
   fontSize(50)
   font("ArialMT")
    
   if (levelSelected == 1) and (worldSelected == 1) then
      text(world1List[1]["word1part1"], WIDTH/4.9, HEIGHT/6)
      text(world1List[1]["word1part2"], WIDTH/1.4, HEIGHT/6) else
   end
        
   if (levelSelected == 2) then
      text(world1List[2]["word2part1"], WIDTH/2, HEIGHT/2)
      text(world1List[2]["word2part1"], WIDTH/2, HEIGHT/2) else
   end 
    
   if (levelSelected == 3) then
       text(world1List[3]["word3part1"], WIDTH/2, HEIGHT/2)
       text(world1List[3]["word3part2"], WIDTH/2, HEIGHT/2) else
   end
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    
    hintButton:touched(touch)
    resetButton:touched(touch)
    
    if (hintButton.selected == true) then
        print("hi")
    end
    
    if (resetButton.selected == true) then
        print(world1List[1]["word10part1"])
    end
end