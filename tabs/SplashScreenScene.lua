-- SplashScreenScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the first scene (company logo)

SplashScreenScene = class()

--global to this file
local buttonToMainScene

function SplashScreenScene:init()

    --sprite("iOS Button Pack:Blue Level Menu Button")
    buttonToMainScene = Button("iOS Button Pack:Blue Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    buttonToMainScene:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    buttonToMainScene:touched(touch)
    
    if(buttonToMainScene.selected == true) then
        Scene.Change("main")
    end
end