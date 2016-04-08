local Arena = {}
Arena.__index = Arena


local radius = 16;
local polygons = {};

function Arena.create(def, game)
  local arena = {
    texture = def.texture
  }
  setmetatable(arena, Arena)
  
  polygons = def.polygons
  
  for k, polygon in pairs(polygons) do
    local polygonBody = love.physics.newBody(game.world, 0, 0, "static")
    local fixture = love.physics.newFixture(polygonBody, love.physics.newPolygonShape(polygon.points))
  end
  
  return arena
end

function Arena:draw()
  
  if (self.texture) then
    love.graphics.draw(self.texture,0,0);
  end
  
end

function Arena:update(dt)
  
end


return Arena;