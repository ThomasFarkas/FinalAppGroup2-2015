-- MainScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene with all the buttons to game, artwork and store

MainScene = class()

--global to this file
local buttonToMainGame
local buttonToStore
    
function MainScene:init()
    --sprite("Dropbox:Blue Question Button")
    buttonToMainGame = SpriteObject("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    buttonToStore = SpriteObject("Dropbox:Blue Question Button", vec2(WIDTH/2+300, HEIGHT/2))
    buttonToMainGame.draggable = false
    buttonToStore.draggable = false 
    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 36, 0, 255)
    buttonToMainGame:draw()
    buttonToStore:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Main", WIDTH/2, HEIGHT/2+300) --title
    fontSize(48)
    text("Main Game", WIDTH/2, HEIGHT/2+100) --subtitle
    text("Store", WIDTH/2+300, HEIGHT/2+100) --subtitle
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    buttonToMainGame:touched(touch)
    buttonToStore:touched(touch)
    
    if(buttonToMainGame.selected == true) then
        Scene.Change("game")
    elseif(buttonToStore.selected == true) then
        Scene.Change("store")
    end
end