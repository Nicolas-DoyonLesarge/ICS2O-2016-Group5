-- ICS2O-2016-Group5
-- Main game

-- Created by: James Lee
-- Created on: Jan 2017
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the main game

MainGameScene = class()

totalPoints = 500

-- Variables local to this tab
local hintButton
local resetButton
local checkButton
local gameTime
local totalPointsToStart
local imagePosition = vec2()
local imagePosition1 = vec2()
local imagePosition2 = vec2()
local imagePosition3 = vec2()
local startPosition = vec2()
local startPosition1 = vec2()
local startPosition2 = vec2()
local startPosition3 = vec2()
local randomWordList = {}
local lockPosition = nil
local lockPosition1 = nil
local rightOrWrong = ""
local wordPosition1
local wordPosition2

--local wordPositions = {}
--local width1 = WIDTH/4.9
--local width2 = WIDTH/1.4

function MainGameScene:init()
    
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    table.insert(randomWordList, "and")
    table.insert(randomWordList, "by")
    table.insert(randomWordList, "thing")
    table.insert(randomWordList, "sweater")
    table.insert(randomWordList, "the")
    table.insert(randomWordList, "true")
    table.insert(randomWordList, "button")
    table.insert(randomWordList, "table")
    table.insert(randomWordList, "canada")
    table.insert(randomWordList, "amaze")
    table.insert(randomWordList, "dream")
    table.insert(randomWordList, "deer")
    
    sprite("Project:Blue Redo Button")
    hintButton = Button("Dropbox:Blue Info Button", vec2(WIDTH/1.1, HEIGHT/9.1))
    resetButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/1.1, HEIGHT/1.1))
    checkButton = Button("Dropbox:Blue Forward Button", vec2(WIDTH/1.1, HEIGHT/3))
    
    -- scene setup code here
    gameTime = ElapsedTime - 1
    local imageName = "Dropbox:Blue Back Circle Button"
    lockPosition = vec2(WIDTH/3.4, HEIGHT/3)
    lockPosition1 = vec2(WIDTH/1.6, HEIGHT/3)
    imagePosition = vec2(WIDTH/2.6, HEIGHT/7)
    imagePosition1 = vec2(WIDTH/1.4, HEIGHT/7)
    imagePosition2 = vec2(WIDTH/4.7, HEIGHT/7)
    imagePosition3 = vec2(WIDTH/1.8, HEIGHT/7)
    imageSize = vec2(spriteSize(imageName))
    imageSize1 = vec2(spriteSize(imageName))
    imageSize2 = vec2(spriteSize(imageName))
    imageSize3 = vec2(spriteSize(imageName))
    startPosition = imagePosition
    startPosition1 = imagePosition1
    startPosition2 = imagePosition2
    startPosition3 = imagePosition3
    totalPoints = 500
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    
    hintButton:touched(touch)
    resetButton:touched(touch)
    checkButton:touched(touch)
    local currentTouchPosition = vec2(touch.x, touch.y)

    -- Allows the words to be draggable
    
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
            
        if((imagePosition2.x - imageSize2.x/2) < currentTouchPosition.x and
        (imagePosition2.x + imageSize2.x/2) > currentTouchPosition.x and
        (imagePosition2.y - imageSize2.y/2) < currentTouchPosition.y and
        (imagePosition2.y + imageSize2.y/2) > currentTouchPosition.y ) then
            
            imagePosition2 = currentTouchPosition    
        end
            
        if((imagePosition3.x - imageSize3.x/2) < currentTouchPosition.x and
        (imagePosition3.x + imageSize3.x/2) > currentTouchPosition.x and
        (imagePosition3.y - imageSize3.y/2) < currentTouchPosition.y and
        (imagePosition3.y + imageSize3.y/2) > currentTouchPosition.y ) then
            
            imagePosition3 = currentTouchPosition
        end
    end
    
    -- Makes sure that a bug where the words all clump together is prevented
    
    if (imagePosition.x == imagePosition1.x) and (imagePosition.y == imagePosition1.y) then
        imagePosition1 = startPosition1
    end
    
    if (imagePosition.x == imagePosition2.x) and (imagePosition.y == imagePosition2.y) then
        imagePosition2 = startPosition2
    end
    
    if (imagePosition.x == imagePosition3.x) and (imagePosition.y == imagePosition3.y) then
        imagePosition3 = startPosition3
    end
    
    if (imagePosition1.x == imagePosition.x) and (imagePosition1.y == imagePosition.y) then
        imagePosition = startPosition
    end
    
    if (imagePosition1.x == imagePosition2.x) and (imagePosition1.y == imagePosition2.y) then
        imagePosition2 = startPosition2
    end
    
    if (imagePosition1.x == imagePosition3.x) and (imagePosition1.y == imagePosition3.y) then
        imagePosition3 = startPosition3
    end
    
    if (imagePosition2.x == imagePosition.x) and (imagePosition2.y == imagePosition.y) then
        imagePosition = startPosition
    end
    
    if (imagePosition2.x == imagePosition1.x) and (imagePosition2.y == imagePosition1.y) then
        imagePosition1 = startPosition1
    end
    
    if (imagePosition2.x == imagePosition3.x) and (imagePosition2.y == imagePosition3.y) then
        imagePosition3 = startPosition3
    end
    
    if (imagePosition3.x == imagePosition) and (imagePosition3.y == imagePosition.y) then
        imagePosition = startPosition
    end
    
    if (imagePosition3.x == imagePosition1.x) and (imagePosition3.y == imagePosition1.y) then
        imagePosition1 = startPosition1
    end
    
    if (imagePosition3.x == imagePosition2.x) and (imagePosition3.y == imagePosition2.y) then
        imagePosition2 = startPosition2
    end
    
    -- Code which allows the words to lock onto a certain position
    
    if (imagePosition.x < WIDTH/3) and 
       (imagePosition.x > WIDTH/5) and
       (imagePosition.y < HEIGHT/1) and
       (imagePosition.y > HEIGHT/4) then
        imagePosition = lockPosition elseif
    
       (imagePosition.x < WIDTH/1) and 
       (imagePosition.x > WIDTH/2) and
       (imagePosition.y < HEIGHT/1) and
       (imagePosition.y > HEIGHT/4) then
        imagePosition = lockPosition1
    end
    
    if (imagePosition1.x < WIDTH/3) and 
       (imagePosition1.x > WIDTH/5) and
       (imagePosition1.y < HEIGHT/1) and
       (imagePosition1.y > HEIGHT/4) then
        imagePosition1 = lockPosition elseif
    
       (imagePosition1.x < WIDTH/1) and 
       (imagePosition1.x > WIDTH/2) and
       (imagePosition1.y < HEIGHT/1) and
       (imagePosition1.y > HEIGHT/4) then
        imagePosition1 = lockPosition1
    end
    
    if (imagePosition2.x < WIDTH/3) and 
       (imagePosition2.x > WIDTH/5) and
       (imagePosition2.y < HEIGHT/1) and
       (imagePosition2.y > HEIGHT/4) then
        imagePosition2 = lockPosition elseif
    
       (imagePosition2.x < WIDTH/1) and 
       (imagePosition2.x > WIDTH/2) and
       (imagePosition2.y < HEIGHT/1) and
       (imagePosition2.y > HEIGHT/4) then
        imagePosition2 = lockPosition1
    end
    
    if (imagePosition3.x < WIDTH/3) and 
       (imagePosition3.x > WIDTH/4) and
       (imagePosition3.y < HEIGHT/1) and
       (imagePosition3.y > HEIGHT/4) then
        imagePosition3 = lockPosition elseif
    
       (imagePosition3.x < WIDTH/1) and 
       (imagePosition3.x > WIDTH/2) and
       (imagePosition3.y < HEIGHT/1) and
       (imagePosition3.y > HEIGHT/4) then
        imagePosition3 = lockPosition1
    end

    -- Checks if the answer is right
    
    if (checkButton.selected == true) then
        
        if (wordPosition1 == lockPosition) and (wordPosition2 == lockPosition1) then
            
            Scene.Change("levelCompleteScene")
            randomWordList[1] = "and"
            randomWordList[3] = "thing"
            randomWordList[5] = "the"
            randomWordList[7] = "button"
            randomWordList[9] = "canada"
            randomWordList[11] = "dream"
            
            rightOrWrong = ""  else
            
            if (wordPosition1 ~= lockPosition) or (wordPosition2 ~= lockPosition1) then
                rightOrWrong = "Wrong"
                totalPoints = totalPoints - 5
            end
        end
    end
        
    -- Hint button erases one sprite, leaving less options
    
    if (hintButton.selected == true) then
        randomWordList[1] = ""
        randomWordList[3] = ""
        randomWordList[5] = ""
        randomWordList[7] = ""
        randomWordList[9] = ""
        randomWordList[11] = ""
        totalPoints = totalPoints - 5
    end
    
    -- Resets all words to their original position
    
    if (resetButton.selected == true) then
       imagePosition = startPosition
       imagePosition1 = startPosition1
       imagePosition2 = startPosition2
       imagePosition3 = startPosition3
       rightOrWrong = ""
    end  
end

function MainGameScene:draw()
    
   background(0, 0, 0, 255)
   sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
   sprite("Cargo Bot:Level Select Frame", WIDTH/2.3, HEIGHT/7, WIDTH/1.1, HEIGHT/4)
    
   hintButton:draw()
   resetButton:draw()
   checkButton:draw()
    
    print(totalPoints)
    
    if(gameTime + 4 < ElapsedTime)then
       totalPoints = totalPoints - 0.018
   end

   -- Shows Time, Level and World
    
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
    
   fill(88, 255, 0, 255)
   text(tostring(rightOrWrong), WIDTH/2.1, HEIGHT/2.7)
    
   fill(255, 0, 3, 255)
   fontSize(50)
   font("ArialMT")
   text("_______", WIDTH/3.4, HEIGHT/3)
   text("_______", WIDTH/1.6, HEIGHT/3)
   
   -- Shows the words
    
   if (levelSelected == 1) and (worldSelected == 1) then
      text(world1List[1]["word1part1"], imagePosition2.x, imagePosition2.y)
      text(world1List[1]["word1part2"], imagePosition1.x, imagePosition1.y)
      text(randomWordList[1], imagePosition.x, imagePosition.y)
      text(randomWordList[2], imagePosition3.x, imagePosition3.y)
      wordPosition1 = imagePosition2
      wordPosition2 = imagePosition1
        
      sprite("Dropbox:imageHint1", WIDTH/2.1, HEIGHT/1.6) else
   end
        
   if (levelSelected == 2) and (worldSelected == 1) then
      text(world1List[2]["word2part1"], imagePosition3.x, imagePosition3.y)
      text(world1List[2]["word2part2"], imagePosition2.x, imagePosition2.y)
      text(randomWordList[3], imagePosition1.x, imagePosition1.y)
      text(randomWordList[4], imagePosition.x, imagePosition.y)
      wordPosition1 = imagePosition3
      wordPosition2 = imagePosition2
        
      sprite("Dropbox:imageHint2", WIDTH/2.1, HEIGHT/1.6) else
   end 
    
   if (levelSelected == 3) and (worldSelected == 1) then
       text(world1List[3]["word3part1"], imagePosition2.x, imagePosition2.y)
       text(world1List[3]["word3part2"], imagePosition1.x, imagePosition1.y)
       text(randomWordList[5], imagePosition.x, imagePosition.y)
       text(randomWordList[6], imagePosition3.x, imagePosition3.y)
       wordPosition1 = imagePosition2
       wordPosition2 = imagePosition1
        
       sprite("Dropbox:imageHint3", WIDTH/2.1, HEIGHT/1.6) else
   end
    
   if (levelSelected == 4) and (worldSelected == 1) then
        text(world1List[4]["word4part1"], imagePosition3.x, imagePosition3.y)
        text(world1List[4]["word4part2"], imagePosition.x, imagePosition.y)
        text(randomWordList[7], imagePosition2.x, imagePosition2.y)
        text(randomWordList[8], imagePosition1.x, imagePosition1.y)
        wordPosition1 = imagePosition3
        wordPosition2 = imagePosition
        sprite("Dropbox:imageHint4", WIDTH/2.1, HEIGHT/1.6)
   end

    if (levelSelected == 5) and (worldSelected == 1) then
        text(world1List[5]["word5part1"], imagePosition1.x, imagePosition1.y)
        text(world1List[5]["word5part2"], imagePosition.x, imagePosition.y)
        text(randomWordList[1], imagePosition2.x, imagePosition2.y)
        text(randomWordList[2], imagePosition3.x, imagePosition3.y)
        sprite("Dropbox:imageHint5", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition1
        wordPosition2 = imagePosition
   end
    
   if (levelSelected == 6) and (worldSelected == 1) then
        text(world1List[6]["word6part1"], imagePosition3.x, imagePosition3.y)
        text(world1List[6]["word6part2"], imagePosition.x, imagePosition.y)
        text(randomWordList[3], imagePosition2.x, imagePosition2.y)
        text(randomWordList[4], imagePosition1.x, imagePosition1.y)
        sprite("Dropbox:imageHint6", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition3
        wordPosition2 = imagePosition
   end    
    
   if (levelSelected == 7) and (worldSelected == 1) then
        text(world1List[7]["word7part1"], imagePosition.x, imagePosition.y)
        text(world1List[7]["word7part2"], imagePosition1.x, imagePosition1.y)
        text(randomWordList[5], imagePosition2.x, imagePosition2.y)
        text(randomWordList[6], imagePosition3.x, imagePosition3.y) 
        sprite("Dropbox:imageHint7", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition
        wordPosition2 = imagePosition1
   end
    
   if (levelSelected == 8) and (worldSelected == 1) then
        text(world1List[8]["word8part1"], imagePosition2.x, imagePosition2.y)
        text(world1List[8]["word8part2"], imagePosition1.x, imagePosition1.y)
        text(randomWordList[7], imagePosition.x, imagePosition.y)
        text(randomWordList[8], imagePosition3.x, imagePosition3.y)
        sprite("Dropbox:imageHint8", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition2
        wordPosition2 = imagePosition1
   end
    
   if (levelSelected == 9) and (worldSelected == 1) then
        text(world1List[9]["word9part1"], imagePosition2.x, imagePosition2.y)
        text(world1List[9]["word9part2"], imagePosition3.x, imagePosition3.y)
        text(randomWordList[9], imagePosition.x, imagePosition.y)
        text(randomWordList[10], imagePosition1.x, imagePosition1.y)
        sprite("Dropbox:imageHint9", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition2
        wordPosition2 = imagePosition3
   end
    
   if (levelSelected == 10) and (worldSelected == 1) then
        text(world1List[10]["word10part1"], imagePosition.x, imagePosition.y)
        text(world1List[10]["word10part2"], imagePosition3.x, imagePosition3.y)
        text(randomWordList[11], imagePosition2.x, imagePosition2.y)
        text(randomWordList[12], imagePosition1.x, imagePosition1.y)
        sprite("Dropbox:imageHint10", WIDTH/2.1, HEIGHT/1.6)
        wordPosition1 = imagePosition
        wordPosition2 = imagePosition3
   end
    
    if (levelSelected == 1) and (worldSelected == 2) then
      text(world2List[1]["word1part1"], imagePosition3.x, imagePosition3.y)
      text(world2List[1]["word1part2"], imagePosition1.x, imagePosition1.y)
      text(randomWordList[1], imagePosition2.x, imagePosition2.y)
      text(randomWordList[2], imagePosition.x, imagePosition.y)
      wordPosition1 = imagePosition3
      wordPosition2 = imagePosition1
   end
        
   if (levelSelected == 2) and (worldSelected == 2) then
      text(world2List[2]["word2part1"], imagePosition2.x, imagePosition2.y)
      text(world2List[2]["word2part2"], imagePosition1.x, imagePosition1.y)
      text(randomWordList[3], imagePosition.x, imagePosition.y)
      text(randomWordList[4], imagePosition3.x, imagePosition3.y)
      wordPosition1 = imagePosition2
      wordPosition2 = imagePosition1
   end 
    
   if (levelSelected == 3) and (worldSelected == 2) then
       text(world2List[3]["word3part1"], imagePosition.x, imagePosition.y)
       text(world2List[3]["word3part2"], imagePosition1.x, imagePosition1.y)
       text(randomWordList[5], imagePosition2.x, imagePosition2.y)
       text(randomWordList[6], imagePosition3.x, imagePosition3.y)
       wordPosition1 = imagePosition
       wordPosition2 = imagePosition1
   end
    
   if (levelSelected == 4) and (worldSelected == 2) then
        text(world2List[4]["word4part1"], imagePosition1.x, imagePosition1.y)
        text(world2List[4]["word4part2"], imagePosition3.x, imagePosition3.y)
        text(randomWordList[7], imagePosition.x, imagePosition.y)
        text(randomWordList[8], imagePosition2.x, imagePosition2.y)
        wordPosition1 = imagePosition1
        wordPosition2 = imagePosition3
   end

   if (levelSelected == 5) and (worldSelected == 2) then
        text(world2List[5]["word5part1"], imagePosition.x, imagePosition.y)
        text(world2List[5]["word5part2"], imagePosition1.x, imagePosition1.y)
        text(randomWordList[1], imagePosition2.x, imagePosition2.y)
        text(randomWordList[2], imagePosition3.x, imagePosition3.y)
        wordPosition1 = imagePosition
        wordPosition2 = imagePosition1
   end
end