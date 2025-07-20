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

    local speed: number = Instance.new("NumberValue")
    speed.Name = "Speed"
    speed.Value = 16
    speed.Parent = leaderstats
end

-- Events
Players.PlayerAdded:Connect(onPlayerAdded)

-- Log
warn("[Module] Loaded leaderstats_init")

return {}