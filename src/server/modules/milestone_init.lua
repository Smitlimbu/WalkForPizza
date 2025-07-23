-- Services
local ServerScriptService: ServerScriptService = game:GetService("ServerScriptService")
local Workspace: Workspace = game:GetService("Workspace")

-- Folders
local modules: Folder = ServerScriptService:WaitForChild("modules")
local milestones: Folder = Workspace:WaitForChild("Milestones")

-- Classes
local Milestone: ModuleScript = require(modules:WaitForChild("milestone_class"))

-- Instances
local milestone1k = Milestone.new(
    {
        badgeId = 4496767044225017,
        touch = milestones:WaitForChild("Milestone1k"):WaitForChild("Touch")
    }
)

-- Log
warn("[Module] Loaded - milestone_init")

return {}