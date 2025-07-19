-- Services
local Players: Players = game:GetService("Players")
local RunService: RunService = game:GetService("RunService")
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace: Workspace = game:GetService("Workspace")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Player Objects
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

-- Everyframe
RunService.Heartbeat:Connect(function()
    if humanoid.MoveDirection.Magnitude > 0 then
        local studs = getStuds()

        walked:FireServer(studs)
    end
end)

-- Events
player.CharacterAdded:Connect(onCharacterAdded)

-- Log
warn("[Module] Loaded studs_client")

return {}