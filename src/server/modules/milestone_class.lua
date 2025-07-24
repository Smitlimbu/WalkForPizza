local Milestone = {}
Milestone.__index = Milestone

-- Services
local Players: Players = game:GetService("Players")
local ServerScriptService: ServerScriptService = game:GetService("ServerScriptService")

-- Folders
local modules: Folder = ServerScriptService:WaitForChild("modules")

-- Utils
local badgeUtils: ModuleScript = require(modules:WaitForChild("badge_utils"))

-- Functions
local function onTouch(self)
    self.touch.Touched:Connect(function(Hit)
        local character: Model = Hit:FindFirstAncestorOfClass("Model")
        if not character then return end

        local player: Player = Players:GetPlayerFromCharacter(character)
        if not player then return end
        
        badgeUtils.awardBadge(player, self.badgeId)
    end)
end

function Milestone.new(config: {})
    local self = setmetatable({}, Milestone)

    self.badgeId = config.badgeId
    self.touch = config.touch

    -- Function calls
    onTouch(self)

    return self
end

return Milestone