-- StarterPlayerScripts
local StarterPlayerScripts: StarterPlayerScripts = script.Parent

-- Folders
local modules: Folder = StarterPlayerScripts:WaitForChild("modules")

-- Random seed
math.randomseed(tick())

-- Require
require(modules:WaitForChild("studs_client"))
require(modules:WaitForChild("clicker_client"))

-- Log
warn("[Main] Startup - All modules loaded successfully")