-- Services
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players: Players = game:GetService("Players")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Remotes
local clicked: RemoteEvent = remotes:WaitForChild("Clicked")

-- Constants
local SPEED_RATE: number = 0.05
local STAT_RATE: number = 1
local BASE_SPEED: number = 5

-- Functions
local function applySpeed(player: Player, shouldIncrement: boolean)
    local leaderstats: Folder = player:WaitForChild("leaderstats")
    local speed: IntValue = leaderstats:WaitForChild("Speed")

    if shouldIncrement then
        speed.Value += STAT_RATE
    end

    local character: Model = player.Character or player.CharacterAdded:Wait()
    local humanoid: Humanoid = character:WaitForChild("Humanoid")

    humanoid.WalkSpeed = BASE_SPEED + speed.Value * SPEED_RATE
end

-- Events
clicked.OnServerEvent:Connect(function(player)
    applySpeed(player, true)
end)

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        applySpeed(player, false)
    end)
end)

-- Log
warn("[Module] Loaded - clicker_server")

return {}