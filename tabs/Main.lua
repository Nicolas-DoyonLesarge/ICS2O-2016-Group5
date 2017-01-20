-- ICS2O-2016-Group5
-- Main

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #5-2016
-- This is the initialization Main code to get the game started

-- this turns on Game Center simulation from the Helper Class
-- this is so you can call Game Center code within Codea 
-- and just set this boolean to "false" before you export to Xcode
DEBUG_GAMECENTER = true

-- Global variables to the entire project
gameMusic = true
-- local variables to this scene


-- Use this function to perform your initial setup
function setup()
    
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()    
    
    gameMusic = sound("Game Music One:Funk Blue Cube")
    
    
    world1List = {}
    world2List = {}
    
    -- All words in world 1
    
    world1List["word1"] = "thanksgiving" 
    world1List["image1"] = SpriteObject("Cargo Bot:Step Button", vec2(WIDTH/4, HEIGHT/4))
    world1List["word2"] = "homework"
    world1List["word3"] = "popcorn"
    world1List["word4"] = "soundtrack"
    world1List["word5"] = "notebook"
    world1List["word6"] = "bedroom"
    world1List["word7"] = "everybody"
    world1List["word8"] = "football"
    world1List["word9"] = "basketball"
    world1List["word10"] = "chalkboard"
    
    -- All words in world 2
    world2List["word1"] = "backpack" 
    world2List["word4"] = "pirate" 
    world2List["word5"] = "tablet" 
    
    -- create the scenes
    Scene("companyLogoScene", CompanyLogoScene)
    Scene("gameLogoScene", GameLogoScene)
    Scene("mainMenu", MainMenu)
    Scene("worldSelect", WorldSelect)
    Scene("levelsWorld1", LevelsWorld1)
    Scene("levelsWorld2", LevelsWorld2)
    Scene("settingsScene", SettingsScene)
    Scene("creditsScene", CreditsScene)
    Scene("highScoresScene")
    
    Scene.Change("companyLogoScene")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 0, 0, 255)

    -- Do your drawing here
    Scene.Draw() 
end

-- This function gets called once every frame
function touched(touch)
    -- Do your touching code here
    Scene.Touched(touch) 
end