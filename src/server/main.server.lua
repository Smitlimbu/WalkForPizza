-- Services
local ServerScriptService: ServerScriptService = game:GetService("ServerScriptService")

-- Folders
local modules: Folder = ServerScriptService:WaitForChild("modules")

-- Require
require(modules:WaitForChild("leaderstats_init"))
require(modules:WaitForChild("studs_server"))
require(modules:WaitForChild("clicker_server"))

-- Log
warn("[Server] All modules loaded successfully!")