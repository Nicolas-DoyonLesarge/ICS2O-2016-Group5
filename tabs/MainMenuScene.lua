-- ICS2O-2016-Group5
-- MainMenuScene

-- Created by: Mr.Coxall
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the scene that shows the main menu

MainMenuScene = class()

-- local variables to this scene
local playButton
local leaderBoardButton
local settingsButton
local creditsButton
local storeButton
local xPosition = WIDTH/math.random(2,3)
local xPosition1 = WIDTH/math.random(4,5)
local xPosition2 = WIDTH/math.random(6,7)
local xPosition3 = WIDTH/math.random(8,9)
local yPosition = HEIGHT/1.1 + 300

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    --sprite("Dropbox:Red Move Scene Forward Button")
    playButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2,HEIGHT/2))
    leaderBoardButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH-100,100))
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(100,HEIGHT-100))
    creditsButton = Button("Dropbox:Blue Question Button", vec2(100,100))
    storeButton = Button("Dropbox:Blue Info Button", vec2(WIDTH-100,HEIGHT-100))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 151, 255, 255)
    sprite("Dropbox:Image 2", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    sprite("Dropbox:cookiePile", WIDTH/2, HEIGHT/8.1, WIDTH * 1.2, HEIGHT/1.2)

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
    
    fill(63, 38, 38, 255)
    font("Baskerville-Italic")
    fontSize(75)
    text("Cookie Words", WIDTH/2, HEIGHT/1.1)
    
    -- do your drawing here
    playButton:draw()
    leaderBoardButton:draw()
    settingsButton:draw()
    creditsButton:draw()
    storeButton:draw()
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    playButton:touched(touch)
    leaderBoardButton:touched(touch)
    settingsButton:touched(touch)
    creditsButton:touched(touch)
    storeButton:touched(touch)
    
    if(playButton.selected == true) then
        Scene.Change("worldSelectScene")
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300

    end
    
    if(leaderBoardButton.selected == true) then
        -- always check to ensure Game Center is logged in
        -- before doing a command, or the player will
        -- get anoying warnings!
        if (gamecenter.enabled() == true) then
            gamecenter.showLeaderboards()
        end
    end
    
    if(settingsButton.selected == true) then
        Scene.Change("settingsScene")
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300
    end
    
    if(creditsButton.selected == true) then
        Scene.Change("creditsScene")
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300
    end
    
    if(storeButton.selected == true) then
        Scene.Change("storeScene")
        xPosition = WIDTH/math.random(2,3)
        xPosition1 = WIDTH/math.random(4,5)
        xPosition2 = WIDTH/math.random(6,7)
        xPosition3 = WIDTH/math.random(8,9)
        yPosition = HEIGHT/1.1 + 300
    end
end