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
local world3Button

-- Use this function to perform your initial setup for this scene
function WorldSelectScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    --sprite("Dropbox:Blue Back Circle Button")
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(100, HEIGHT-100))
    world1Button = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-250, HEIGHT/2))
    world2Button = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2+250, HEIGHT/2))
end

function WorldSelectScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 255, 255, 255)
    
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
        Scene.Change("levelSelectScene")
    end  
    if(world2Button.selected == true) then
        Scene.Change("levelSelectScene")
        worldSelected = 2
    end  
end