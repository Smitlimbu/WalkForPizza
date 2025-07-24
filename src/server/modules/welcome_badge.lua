-- Services
local Players: Players = game:GetService("Players")
local ServerScriptService: ServerScriptService = game:GetService("ServerScriptService")

-- Folders
local modules: Folder = ServerScriptService:WaitForChild("modules")

-- Utils
local badgeUtils: ModuleScript = require(modules:WaitForChild("badge_utils"))

-- Constants
local BADGE_ID: number = 1228853339521607

-- Events
Players.PlayerAdded:Connect(function(player)
    badgeUtils.awardBadge(player, BADGE_ID)
end)

-- Log
warn("[Module] Loaded - welcome_badge")

return {}