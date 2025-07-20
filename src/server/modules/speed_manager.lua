-- Services
local Players: Players = game:GetService("Players")

-- Constants
local INCREMENT_RATE: number = 0.1
local MAX_SPEED: number = 200

-- Main loop
task.spawn(function()
    while true do
        task.wait(1)

        for _, player in ipairs(Players:GetPlayers()) do
            local leaderstats: Folder = player:FindFirstChild("leaderstats")
            if not leaderstats then continue end

            local speed: NumberValue = leaderstats:FindFirstChild("Speed")
            if not speed then continue end

            if speed.Value >= MAX_SPEED then continue end

            local character: Model = player.Character
            if not character then continue end
            
            local humanoid: Humanoid = character:FindFirstChildOfClass("Humanoid")
            if not humanoid then continue end

            humanoid.WalkSpeed += INCREMENT_RATE
            speed.Value = humanoid.WalkSpeed
        end 
    end
end)

-- Log
warn("[Module] Loaded speed_manager")

return {}