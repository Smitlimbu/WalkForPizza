-- Services
local Players: Players = game:GetService("Players")

-- Functions
local function onPlayerAdded(player)
    local leaderstats: Folder = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local studs: IntValue = Instance.new("IntValue")
    studs.Name = "Studs"
    studs.Value = 0
    studs.Parent = leaderstats

    local speed: IntValue = Instance.new("IntValue")
    speed.Name = "Speed"
    speed.Value = 0
    speed.Parent = leaderstats
end

-- Events
Players.PlayerAdded:Connect(onPlayerAdded)

-- Log
warn("[Module] Loaded - leaderstats_init")

return {}