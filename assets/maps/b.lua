local BAR_WIDTH = 16; -- The width of the _BARS_
local BAR_LENGTH_VERTICAL = 780;
local BAR_LENGTH_HORIZONTAL = 1700;

local MAP_WIDTH = 1920;
local MAP_HEIGHT = 1080;

local TOP_LEFT_X = 100;
local TOP_LEFT_Y = 170;
local TOP_RIGHT_X = 1800;
local TOP_RIGHT_Y = 170;
local BOTTOM_LEFT_X = 100;
local BOTTOM_LEFT_Y = 930;

function toPolygon(x, y, width, height)
  return { x, y,
           x + width, y,
           x + width, y + height,
           x, y + height}
end

return {
  nextMap = "assets.maps.c",
  music = love.audio.newSource("assets/sounds/music/musicArena1.mp3"),
  entities = {
    {
      type = 'PlayerBlock',
      points = {
        MAP_WIDTH/2 - BAR_WIDTH/2, TOP_LEFT_Y, 
        MAP_WIDTH/2 + BAR_WIDTH/2, TOP_LEFT_Y,
        MAP_WIDTH/2 + BAR_WIDTH/2, TOP_LEFT_Y + BAR_LENGTH_VERTICAL,
        MAP_WIDTH/2 - BAR_WIDTH/2, TOP_LEFT_Y + BAR_LENGTH_VERTICAL
      }
    },
    {
      type = 'Arena',
      texture = love.graphics.newImage("assets/textures/arena_b.jpg"),
      polygons = {
        {
          name = "top_bar",
          points = toPolygon(TOP_LEFT_X, TOP_LEFT_Y, BAR_LENGTH_HORIZONTAL, BAR_WIDTH)
        },
        {
          name = "bottom_bar",
          points = toPolygon(TOP_LEFT_X, BOTTOM_LEFT_Y, BAR_LENGTH_HORIZONTAL, BAR_WIDTH)
        },
        {
          name = "left_bar",
          points = toPolygon(TOP_LEFT_X, TOP_LEFT_Y, BAR_WIDTH, BAR_LENGTH_VERTICAL)
        },
        {
          name = "right_bar",
          points = toPolygon(TOP_RIGHT_X, TOP_RIGHT_Y, BAR_WIDTH, BAR_LENGTH_VERTICAL)
        }
      }
    },
    {
      type = "StaticImage",
      x = 0,
      y = 0,
      texture = love.graphics.newImage("assets/textures/arena_b_runes.png"),
      pulseCycle = 3,
      pulseMin = 100
    },
    {
      type = "Debris",
      minX = 400, maxX = 1600,
      minY = 400, maxY = 800,
      texture = love.graphics.newImage("assets/textures/crate.png")
    },
    {
      type = "Debris",
      minX = 400, maxX = 1600,
      minY = 400, maxY = 800,
      texture = love.graphics.newImage("assets/textures/crate.png")
    },
    {
      type = "Debris",
      minX = 400, maxX = 1600,
      minY = 400, maxY = 800,
      texture = love.graphics.newImage("assets/textures/crate.png")
    },
    {
      type = "Debris",
      minX = 400, maxX = 1600,
      minY = 400, maxY = 800,
      texture = love.graphics.newImage("assets/textures/crate.png")
    },
    {
      type = 'Ball',
      no = 2,
      x = MAP_WIDTH/2,
      y = MAP_HEIGHT/2,
      texture = love.graphics.newImage("assets/textures/fireball.png")
    },
    {
      type = 'Wave',
    },
    {
      type = 'Player',
      no = 1,
      x = TOP_LEFT_X + 200;
      y = (TOP_LEFT_Y + BOTTOM_LEFT_Y)/2,
      texture = love.graphics.newImage("assets/textures/red.png"),
      pullTexture = love.graphics.newImage("assets/textures/red_pull.png"),
      shieldTexture = love.graphics.newImage("assets/textures/shield.png"),
      shieldInvincibleTexture = love.graphics.newImage("assets/textures/shield_invincible.png"),
      pull1Texture = love.graphics.newImage("assets/textures/pull1.png"),
      pull2Texture = love.graphics.newImage("assets/textures/pull2.png"),
      startDirection = 1,
      team = 1
    },
    {
      type = 'Player',
      no = 2,
      x = TOP_LEFT_X + BAR_LENGTH_HORIZONTAL - 200,
      y = (TOP_LEFT_Y + BOTTOM_LEFT_Y)/2,
      texture = love.graphics.newImage("assets/textures/blue.png"),
      pullTexture = love.graphics.newImage("assets/textures/blue_pull.png"),
      shieldTexture = love.graphics.newImage("assets/textures/shield.png"),
      shieldInvincibleTexture = love.graphics.newImage("assets/textures/shield_invincible.png"),
      pull1Texture = love.graphics.newImage("assets/textures/pull1.png"),
      pull2Texture = love.graphics.newImage("assets/textures/pull2.png"),
      startDirection = -1,
      team = 2
    },
    {
      type = 'Player',
      no = 3,
      x = TOP_LEFT_X + 500;
      y = (TOP_LEFT_Y + BOTTOM_LEFT_Y)/2,
      texture = love.graphics.newImage("assets/textures/pink.png"),
      pullTexture = love.graphics.newImage("assets/textures/pink_pull.png"),
      shieldTexture = love.graphics.newImage("assets/textures/shield.png"),
      shieldInvincibleTexture = love.graphics.newImage("assets/textures/shield_invincible.png"),
      pull1Texture = love.graphics.newImage("assets/textures/pull1.png"),
      pull2Texture = love.graphics.newImage("assets/textures/pull2.png"),
      startDirection = 1,
      team = 1
    },
    {
      type = 'Player',
      no = 4,
      x = TOP_LEFT_X + BAR_LENGTH_HORIZONTAL - 500,
      y = (TOP_LEFT_Y + BOTTOM_LEFT_Y)/2,
      texture = love.graphics.newImage("assets/textures/green.png"),
      pullTexture = love.graphics.newImage("assets/textures/green_pull.png"),
      shieldTexture = love.graphics.newImage("assets/textures/shield.png"),
      shieldInvincibleTexture = love.graphics.newImage("assets/textures/shield_invincible.png"),
      pull1Texture = love.graphics.newImage("assets/textures/pull1.png"),
      pull2Texture = love.graphics.newImage("assets/textures/pull2.png"),
      startDirection = -1,
      team = 2
    },
    {
      type = "StaticImage",
      x = 0,
      y = MAP_HEIGHT-280,
      texture = love.graphics.newImage("assets/textures/arena_b_overlay.png")
    }
  }
}
