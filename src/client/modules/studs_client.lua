-- Services
local Players: Players = game:GetService("Players")
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace: Workspace = game:GetService("Workspace")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Player objects
local player: Player = Players.LocalPlayer
local character: Model = player.Character or player.CharacterAdded:Wait()
local humanoid: Humanoid = character:WaitForChild("Humanoid")
local hrp: Part = character:WaitForChild("HumanoidRootPart")

-- Remotes
local walked: RemoteEvent = remotes:WaitForChild("Walked")

-- Variables
local startPosZ: number = Workspace:WaitForChild("StartLine").Position.Z

-- Functions
local function getStuds()
    local currentPosZ: number = hrp.Position.Z

    return currentPosZ - startPosZ
end

local function onCharacterAdded(newCharacter)
    character = newCharacter
    humanoid = character:WaitForChild("Humanoid")
    hrp = character:WaitForChild("HumanoidRootPart")
end

-- Main loop
task.spawn(function()
    while true do
        task.wait(0.25)

        if humanoid.MoveDirection.Magnitude > 0 then
            local studs = getStuds()

            if studs < 0 then continue end

            walked:FireServer(studs)
        end
    end
end)

-- Events
player.CharacterAdded:Connect(onCharacterAdded)

-- Log
warn("[Module] Loaded studs_client")

return {}