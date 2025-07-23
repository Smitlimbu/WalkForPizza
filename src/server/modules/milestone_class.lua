local Milestone = {}
Milestone.__index = Milestone

-- Services
local BadgeService: BadgeService = game:GetService("BadgeService")
local Players: Players = game:GetService("Players")

-- Functions
local function awardBadge(player: Player, badgeId: number)
    local hasBadgeSuccess, hasBadge = pcall(function()
        return BadgeService:UserHasBadgeAsync(player.UserId, badgeId)
    end)

    if not hasBadgeSuccess then
        warn("Failed to check badge ownership: ", hasBadge)
        return
    end

    if hasBadge then return end

    local awardSuccess, err = pcall(function()
        BadgeService:AwardBadge(player.UserId, badgeId)
    end)

    if not awardSuccess then
        warn("Failed to award badge: ", err)
    end
end

local function onTouch(self)
    self.touch.Touched:Connect(function(Hit)
        local character: Model = Hit:FindFirstAncestorOfClass("Model")
        if not character then return end

        local player: Player = Players:GetPlayerFromCharacter(character)
        if not player then return end
        
        awardBadge(player, self.badgeId)
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