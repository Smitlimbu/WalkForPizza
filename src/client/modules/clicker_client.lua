-- Services
local UIS: UserInputService = game:GetService("UserInputService")
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Remotes
local clicked: RemoteEvent = remotes:WaitForChild("Clicked")

-- Events
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        clicked:FireServer()
    end
end)

-- Log
warn("[Module] Loaded clicker_client")

return {}