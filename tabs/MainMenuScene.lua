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

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init()
    -- setup display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    sprite("Cargo Bot:Play Button")
    playButton = Button("Cargo Bot:Play Button", vec2(WIDTH/2,HEIGHT/2))
    leaderBoardButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH-100,100))
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(100,HEIGHT-100))
    creditsButton = Button("Dropbox:Blue Question Button", vec2(100,100))
    storeButton = Button("Dropbox:Blue Info Button", vec2(WIDTH-100,HEIGHT-100))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    sprite("Project:background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
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
        Scene.Change("mainGameScene")
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
    end
    if(creditsButton.selected == true) then
        Scene.Change("creditsScene")
    end
    if(storeButton.selected == true) then
        Scene.Change("storeScene")
    end
end