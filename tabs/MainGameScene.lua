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
local gameTime
local totalPoints = 500
local totalPointsToStart
local imagePosition = vec2()
local imagePosition1 = vec2()
local startPosition = vec2()
local startPosition1 = vec2()

--local wordPositions = {}
--local width1 = WIDTH/4.9
--local width2 = WIDTH/1.4

function MainGameScene:init()
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    --sprite("Project:Blue Redo Button")
    hintButton = Button("Dropbox:Blue Info Button", vec2(WIDTH/1.1, HEIGHT/9.1))
    resetButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/1.1, HEIGHT/1.1))
    
    -- scene setup code here
    gameTime = ElapsedTime - 1
    local imageName = "Dropbox:Blue Back Circle Button"
    imagePosition = vec2(WIDTH/2.6, HEIGHT/7)
    imagePosition1 = vec2(WIDTH/1.4, HEIGHT/7)
    imageSize = vec2(spriteSize(imageName))
    imageSize1 = vec2(spriteSize(imageName))
    startPosition = imagePosition
    startPosition1 = imagePosition1
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    
    hintButton:touched(touch)
    resetButton:touched(touch)
    local currentTouchPosition = vec2(touch.x, touch.y)
    
    if (touch.state == MOVING) then
        if((imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
        (imagePosition.x + imageSize.x/2) > currentTouchPosition.x and
        (imagePosition.y - imageSize.y/2) < currentTouchPosition.y and
        (imagePosition.y + imageSize.y/2) > currentTouchPosition.y ) then
            
        imagePosition = currentTouchPosition
        end
            
        if((imagePosition1.x - imageSize1.x/2) < currentTouchPosition.x and
        (imagePosition1.x + imageSize1.x/2) > currentTouchPosition.x and
        (imagePosition1.y - imageSize1.y/2) < currentTouchPosition.y and
        (imagePosition1.y + imageSize1.y/2) > currentTouchPosition.y ) then
            
        imagePosition1 = currentTouchPosition
        end
    end
    
    if (touch.state == ENDED) then
        imagePosition = startPosition
        imagePosition1 = startPosition1
    end
    
    if (hintButton.selected == true) then
        print("hi")
    end
    
    if (resetButton.selected == true) then
        print(world1List[1]["word10part1"])
    end
end

function MainGameScene:draw()
    
   background(0, 0, 0, 255)
   sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
   sprite("Cargo Bot:Level Select Frame", WIDTH/2.3, HEIGHT/7, WIDTH/1.1, HEIGHT/4)
    
   hintButton:draw()
   resetButton:draw()
    
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
   text("_______", WIDTH/3.4, HEIGHT/3)
   text("_______", WIDTH/1.6, HEIGHT/3)
   text("sound", WIDTH/1.8, HEIGHT/7)
   text("track", WIDTH/4.9, HEIGHT/7)
    
   if (levelSelected == 1) and (worldSelected == 1) then
      text(world1List[1]["word1part1"], imagePosition.x, imagePosition.y)
      text(world1List[1]["word1part2"], imagePosition1.x, imagePosition1.y) else
   end
        
   if (levelSelected == 2) and (worldSelected == 1) then
      text(world1List[2]["word2part1"], imagePosition.x, imagePosition.y)
      text(world1List[2]["word2part2"], imagePosition1.x, imagePosition1.y) else
   end 
    
   if (levelSelected == 3) then
       text(world1List[3]["word3part1"], WIDTH/2, HEIGHT/2)
       text(world1List[3]["word3part2"], WIDTH/2, HEIGHT/2) else
   end
end