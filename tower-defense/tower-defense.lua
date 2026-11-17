-- Tower Defense (Roblox Studio) — basic mechanics
-- Place in ServerScriptService / Workspace; uses Folder + Parts
-- Map: 20x4 grid path (Z axis). Towers = blue Parts at mouse click.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GRID_SIZE = 4
local TOWER_COST = 50
local TOWER_RANGE = 10

local towerFolder = Instance.new("Folder", workspace)
towerFolder.Name = "Towers"

local function spawnEnemy(startPos)
    local e = Instance.new("Part", workspace)
    e.Name = "Enemy"
    e.Shape = Enum.PartType.Ball
    e.Size = Vector3.new(2,2,2)
    e.Position = startPos
    e.BrickColor = BrickColor.new("Bright red")
    e.Anchored = false
    e.CanCollide = false
    return e
end

local function placeTower(pos)
    local t = Instance.new("Part", towerFolder)
    t.Name = "Tower"
    t.Shape = Enum.PartType.Block
    t.Size = Vector3.new(3,3,3)
    t.Position = pos
    t.BrickColor = BrickColor.new("Bright blue")
    t.Anchored = true
    return t
end

-- Simple loop: spawn wave, towers shoot nearest enemy
-- (Full wave logic + projectile part spawning omitted for brevity — extend with RemoteEvent for click-to-place)
print("Tower Defense loaded — use placeTower(pos) and spawnEnemy(pos) in Studio")
