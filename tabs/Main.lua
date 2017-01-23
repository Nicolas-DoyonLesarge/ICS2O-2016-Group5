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
worldSelected = nil
levelSelected = nil
world1List = {}
world2List = {}
totalPoints = nil

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

    -- All words in World 1
    
    word1world1 = {}
    word1world1["word1"] = "thanksgiving" 
    word1world1["word1part1"] = "thanks"
    word1world1["word1part2"] = "giving"
    table.insert(world1List, word1world1)
    
    word2world1 = {}
    word2world1["word2"] = "homework"
    word2world1["word2part1"] = "home"
    word2world1["word2part2"] = "work"
    table.insert(world1List, word2world1)
    
    word3world1 = {}
    word3world1["word3"] = "popcorn"
    word3world1["word3part1"] = "pop"
    word3world1["word3part2"] = "corn"
    table.insert(world1List, word3world1)
    
    word4world1 = {}
    word4world1["word4"] = "soundtrack"
    word4world1["word4part1"] = "sound"
    word4world1["word4part2"] = "track"
    table.insert(world1List, word4world1)
    
    word5world1 = {}
    word5world1["word5"] = "notebook"
    word5world1["word5part1"] = "note"
    word5world1["word5part2"] = "book"
    table.insert(world1List, word5world1)
    
    word6world1 = {}
    word6world1["word6"] = "bedroom"
    word6world1["word6part1"] = "bed"
    word6world1["word6part2"] = "room"
    table.insert(world1List, word6world1)
    
    word7world1 = {}
    word7world1["word7"] = "everybody"
    word7world1["word7part1"] = "every"
    word7world1["word7part2"] = "body"
    table.insert(world1List, word7world1)
    
    word8world1 = {}
    word8world1["word8"] = "football"
    word8world1["word8part1"] = "foot"
    word8world1["word8part2"] = "ball"
    table.insert(world1List, word8world1)
    
    word9world1 = {}
    word9world1["word9"] = "basketball"
    word9world1["word9part1"] = "basket"
    word9world1["word9part2"] = "ball"
    table.insert(world1List, word9world1)
    
    word10world1 = {}
    word10world1["word10"] = "chalkboard"
    word10world1["word10part1"] = "chalk"
    word10world1["word10part2"] = "board"
    table.insert(world1List, word10world1)
    
    -- All words in world 2
    
    word1world2 = {}
    word1world2["word1"] = "backpack" 
    word1world2["word1part1"] = "back"
    word1world2["word1part2"] = "pack"
    table.insert(world2List, word1world2)

    word2world2 = {}
    word2world2["word2"] = "legend" 
    word2world2["word2part1"] = "leg"
    word2world2["word2part2"] = "end"
    table.insert(world2List, word2world2)
    
    word3world2 = {}
    word3world2["word3"] = "question" 
    word3world2["word3part1"] = "quest"
    word3world2["word3part2"] = "ion"
    table.insert(world2List, word3world2)
    
    word4world2 = {}
    word4world2["word4"] = "pirate" 
    word4world2["word4part1"] = "pi"
    word4world2["word4part2"] = "rate"
    table.insert(world2List, word4world2)
    
    word5world2 = {}
    word5world2["word5"] = "tablet" 
    word5world2["word5part1"] = "tab"
    word5world2["word5part2"] = "let"
    table.insert(world2List, word5world2)
    
    -- create the scenes
    
    Scene("companyLogoScene", CompanyLogoScene)
    Scene("gameLogoScene", GameLogoScene)
    Scene("mainMenuScene", MainMenuScene)
    Scene("mainGameScene", MainGameScene)
    Scene("settingsScene", SettingsScene)
    Scene("creditsScene", CreditsScene)
    Scene("storeScene", StoreScene)
    Scene("worldSelectScene", WorldSelectScene)
    Scene("levelSelectScene", LevelSelectScene)
    Scene("levelCompleteScene", LevelCompleteScene)
    Scene("levelsWorld1", LevelsWorld1)
    Scene("levelsWorld2", LevelsWorld2)
    
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