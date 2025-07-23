-- Services
local UIS: UserInputService = game:GetService("UserInputService")
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players: Players = game:GetService("Players")
local TweenService: TweenService = game:GetService("TweenService")

-- Folders
local remotes: Folder = ReplicatedStorage:WaitForChild("Remotes")

-- Remotes
local clicked: RemoteEvent = remotes:WaitForChild("Clicked")

-- Player
local player: Player = Players.LocalPlayer

-- Gui elements
local playerGui: PlayerGui
local clicker: ScreenGui
local click: Sound
local popup: TextLabel

-- Variables
local ready: boolean = false

-- Functions
local function initGui()
    ready = false

    playerGui = player:WaitForChild("PlayerGui")
    clicker = playerGui:WaitForChild("Clicker")
    click = clicker:WaitForChild("Click")
    popup = clicker:WaitForChild("Popup")

    ready = true
end

local function showPopup(inputX: number, inputY: number)
    local clone = popup:Clone()

    clone.Visible = true
    clone.AnchorPoint = Vector2.new(0.5, 0.5)
    clone.Position = UDim2.new(0, inputX + math.random(-60, 60), 0, inputY)
    clone.Parent = clicker
    clone.TextColor3 = Color3.fromRGB(
        math.random(50, 255),
        math.random(50, 255),
        math.random(50, 255)
    )

    local goal = {
        Position = clone.Position - UDim2.new(0, 0, 0, 200),
        TextTransparency = 0.5
    }

    local tweenInfo: TweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween: Tween = TweenService:Create(clone, tweenInfo, goal)

    tween:Play()

    tween.Completed:Connect(function()
        clone:Destroy()
    end)
end

-- Function calls
initGui()

-- Events
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent or not ready then return end

    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        local inputX = input.Position.X
        local inputY = input.Position.Y

        -- Show popup
        showPopup(inputX, inputY)

        -- Fire server
        clicked:FireServer()

        -- Play sound
        click:Play()
    end
end)

player.CharacterAdded:Connect(initGui)

-- Log
warn("[Module] Loaded - clicker_client")

return {}