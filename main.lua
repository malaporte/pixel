-- LIBS
Gamestate = require "hump.gamestate"
Timer = require "hump.timer"
vector = require "hump.vector-light"
Class = require "hump.class"
Signal = require 'hump.signal'
Camera = require "hump.camera"

anim8 = require "anim8"
bump = require 'bump'

debugWorld = require "debugWorld"

require "constants"
require "particles"

-- entities
EntityTypes = {
  Bump = require "entity.bump",
  Puller = require "entity.puller",
  Pusher = require "entity.pusher",
  Player = require "entity.player",
  PlayerBlock= require "entity.playerBlock",
  Arena = require "entity.arena",
  HitPoints = require "entity.hitpoints",
  Ball = require "entity.ball",
  Scoreboard = require "entity.scoreboard",
  Layer = require "entity.layer",
  StaticImage = require "entity.staticImage"
}

function love.load()
  
    -- Conf
    love.physics.setMeter(50)
    
    Gamestate.registerEvents()
    Gamestate.switch(require('state.menu'))
  

end
