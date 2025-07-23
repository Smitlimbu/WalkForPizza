-- Services
local ServerScriptService: ServerScriptService = game:GetService("ServerScriptService")

-- Folders
local modules: Folder = ServerScriptService:WaitForChild("modules")

-- Require
require(modules:WaitForChild("leaderstats_init"))
require(modules:WaitForChild("milestone_init"))

require(modules:WaitForChild("studs_server"))
require(modules:WaitForChild("clicker_server"))

require(modules:WaitForChild("welcome_badge"))

-- Log
warn("[Main] Startup - All modules loaded successfully")