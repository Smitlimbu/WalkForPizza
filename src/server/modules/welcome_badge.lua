-- Services
local BadgeService: BadgeService = game:GetService("BadgeService")
local Players: Players = game:GetService("Players")

-- Constants
local BADGE_ID: number = 1228853339521607

-- Functions
local function awardBadge(player: Player)
    local hasBadgeSuccess, hasBadge = pcall(function()
        return BadgeService:UserHasBadgeAsync(player.UserId, BADGE_ID)
    end)

    if not hasBadgeSuccess then
        warn("Failed to check badge ownership: ", hasBadge)
        return
    end

    if hasBadge then return end

    local awardSuccess, err = pcall(function()
        BadgeService:AwardBadge(player.UserId, BADGE_ID)
    end)

    if not awardSuccess then
        warn("Failed to award badge ", err)
    end
end

-- Events
Players.PlayerAdded:Connect(awardBadge)

-- Log
warn("[Module] Loaded - welcome_badge")

return {}