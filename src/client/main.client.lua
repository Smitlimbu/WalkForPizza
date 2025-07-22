-- StarterPlayerScripts
local StarterPlayerScripts: StarterPlayerScripts = script.Parent

-- Folders
local modules: Folder = StarterPlayerScripts:WaitForChild("modules")

-- Require
require(modules:WaitForChild("studs_client"))
require(modules:WaitForChild("clicker_client"))

-- Log
warn("[Client] All modules loaded successfully!")