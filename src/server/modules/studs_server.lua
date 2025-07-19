-- Services
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Remotes
local walked: RemoteEvent = remotes:WaitForChild("Walked")

-- Events
walked.OnServerEvent:Connect(function(player, studs)
    player.leaderstats.Studs.Value = studs
end)

-- Log
warn("[Module] Loaded studs_server")

return {}
