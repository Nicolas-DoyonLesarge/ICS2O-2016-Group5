
CreditsScene = class()

function CreditsScene:init(x)
    -- you can accept and set parameters here
-- ICS2O-2016-Group5
-- CreditsScene

-- Created by: Mr.Coxall
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the scene for the credits

CreditsScene = class()

-- local variables to this scene
local backButton
local yPosition = HEIGHT/12
local startTime

-- Use this function to perform your initial setup for this scene
function CreditsScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    --sprite("Dropbox:Blue Back Circle Button")
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))
    startTime = ElapsedTime
end

function CreditsScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 213, 0, 255)
    sprite("Dropbox:creditsSceneBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    font("AmericanTypewriter-Condensed")
    fontSize(55)
    fill(255, 0, 21, 255)
    
    text("Created by . . .", WIDTH/2, yPosition)
    
    fontSize(40)
    fill(255, 255, 255, 255)
    font("Baskerville-Italic")
    
    text("Grade Threes", WIDTH/2, yPosition - 95)
    text("__________", WIDTH/2, yPosition - 100)
    
    fontSize(35)
    
    text("Abbey", WIDTH/2, yPosition - 160)
    text("Madilynn", WIDTH/2, yPosition - 210)
    text("Mandela", WIDTH/2, yPosition - 260)
    text("Trinity", WIDTH/2, yPosition - 310)
    
    fontSize(40)
    
    text("Grade Nines and Tens", WIDTH/2, yPosition - 390)
    text("________________", WIDTH/2, yPosition - 395)
    
    fontSize(35)
    
    text("Menu System : Nick", WIDTH/2, yPosition - 440)
    text("Main Game : James", WIDTH/2, yPosition - 490)
    
    fill(245, 231, 29, 255)
    text("Artwork Taken From ClipartPanda.com!", WIDTH/2, yPosition - 580)
    
    -- Have the text move up, like credits
    
    if (startTime + 0.5 < ElapsedTime) then
        yPosition = yPosition + 1
    end
    
    -- Has the text freeze, so that it shows the entire text
    
    if (startTime + 21 < ElapsedTime) then
        yPosition = yPosition - 1
    end
    
    -- do your drawing here
    
    backButton:draw()
end

function CreditsScene:touched(touch)
    
    -- Codea does not automatically call this method
    
    backButton:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("mainMenuScene")
        
        -- When you exit the scene, the position of the words reset
        yPosition = HEIGHT/12 
    end    
end
