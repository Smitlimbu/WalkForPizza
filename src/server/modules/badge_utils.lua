local badgeUtils = {}

-- Services
local BadgeService: BadgeService = game:GetService("BadgeService")

function badgeUtils.awardBadge(player: Player, badgeId: number)
    local hasBadgeSuccess, hasBadge = pcall(function()
        return BadgeService:UserHasBadgeAsync(player.UserId, badgeId)
    end)

    if not hasBadgeSuccess then
        warn("Failed to check badge ownership: ", hasBadge)
        return
    end

    if hasBadge then
        print(player.Name .. " already has the badge!") 
        return 
    end

    local awardSuccess, err = pcall(function()
        BadgeService:AwardBadge(player.UserId, badgeId)
    end)

    if not awardSuccess then
        warn("Failed to award badge: ", err)
    end
end

return badgeUtils