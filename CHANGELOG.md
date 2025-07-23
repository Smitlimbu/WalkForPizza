# Changelog

## [1.1.0]

### Added
- Play a click sound when clicked.
- Visual effects when clicked.
- `milestone_class.lua` and `milestone_init.lua` for handling milestones and awarding badges upon reaching milestones.
- `welcome_badge.lua` module for awarding the Welcome badge on the first play of the game.

### Changed
- Log structures.

### Removed
- None.

### Fixed
- None.

---

## [1.0.0] - 2025-07-22

### Added
- `clicker_server.lua` and `clicker_client.lua` to handle player clicks on server and client.
- New modules in `main.server.lua` and `main.client.lua`.
- "Removed" section introduced to track deleted files.

### Changed
- Speed system now increases by clicking, not automatically every second.
- README.md updated to explain new gameplay.

### Removed
- `speed_manager.lua` no longer needed.

### Fixed
- None

---

## [0.1.4] - 2025-07-20

### Added
- `speed_manager.lua` for automatic speed increases.
- New module in `main.server.lua`.
- Speed tracking in leaderstats.

### Changed
- None

### Removed
- Baseplate removed from `default.project.json` to clean workspace.

### Fixed
- None

---

## [0.1.3] - 2025-07-19

### Added
- None

### Changed
- Project renamed from "Walk 157,696 studs for a pizza" to "Walk 157,696 Studs to Meet TungTung Sahur".
- Replaced `RunService.Heartbeat` with `while` loop to cut updates by 93%, improving performance.

### Removed
- None

### Fixed
- Fixed negative distance values sent to players.

---

## [0.1.2] - 2025-07-19

### Added
- `studs_server.lua` and `studs_client.lua` to track walking distance.
- New modules in `main.server.lua` and `main.client.lua`.

### Changed
- `leaderstats_manager.lua` renamed to `leaderstats_init.lua`.

### Removed
- None

### Fixed
- None

---

## [0.1.1] - 2025-07-18

### Added
- Final biome: marble.
- Logging.
- `leaderstats_manager.lua` for player stats.
- New modules in `main.server.lua`.

### Changed
- Updated `main.server.lua` and `main.client.lua` with new features.

### Removed
- None

### Fixed
- None

---

## [0.1.0] - 2025-07-17

### Added
- Biomes: grass, sand, ice, wood, brick, cobblestone.
- Initial project structure and naming.
- `README.md` and `CHANGELOG.md`.

### Changed
- None

### Removed
- None

### Fixed
- None
