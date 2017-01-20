-- ICS2O-2016-Group5
-- WorldSelectScene

-- Created by: Mr.Coxall
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the scene for the world selection

WorldSelectScene = class()

-- local variables to this scene
local backButton
local world1Button
local world2Button

-- Use this function to perform your initial setup for this scene
function WorldSelectScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    
    --sprite("Project:world2Select")
    
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))
    world1Button = Button("Dropbox:world1Select", vec2(WIDTH/2-250, HEIGHT/2))
    world2Button = Button("Dropbox:world2Select", vec2(WIDTH/2+250, HEIGHT/2))
end

function WorldSelectScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 255, 255, 255)
    sprite("Dropbox:worldSelectBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    font("Arial-ItalicMT")
    fontSize(50)
    fill(255, 255, 255, 255)
    
    text("World 1", WIDTH/4, HEIGHT/4)
    
    fill(0, 99, 255, 255)
    
    text("World 2", WIDTH/1.35, HEIGHT/4)
    
    fill(255, 0, 6, 255)
    fontSize(60)
    
    text("World Select", WIDTH/2, HEIGHT/1.1)
    
    -- do your drawing here
    backButton:draw()
    world1Button:draw()
    world2Button:draw()
end

function WorldSelectScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    world1Button:touched(touch)
    world2Button:touched(touch)
    
    if(backButton.selected == true) then
        Scene.Change("mainMenuScene")
    end    
    if(world1Button.selected == true) then
        worldSelected = 1
        Scene.Change("levelsWorld1")
    end  
    if(world2Button.selected == true) then
        worldSelected = 2
        Scene.Change("levelsWorld2")
    end  
end