# Changelog

## [1.1.1]

### Added
- `Assets` folder.
- `badge_utils.lua` for badge utility functions.

### Changed
- Replaced repeated badge logic with `badge_utils.lua`.

### Removed
- None.

### Fixed
- None.

---

## [1.1.0] - 2025-07-24

### Added
- Click sound effect when clicked.
- Visual feedback when clicked.
- `milestone_class.lua` and `milestone_init.lua` for handling milestones and awarding badges.
- `welcome_badge.lua` for awarding the Welcome badge on the player's first session.

### Changed
- Improved log structure.

### Removed
- None.

### Fixed
- None.

---

## [1.0.0] – 2025-07-22

### Added
- `clicker_server.lua` and `clicker_client.lua` for handling clicks on the server and client.
- New modules integrated into `main.server.lua` and `main.client.lua`.
- "Removed" section added to track deleted files.

### Changed
- Speed now increases by clicking instead of incrementing automatically every second.
- `README.md` updated to reflect new gameplay mechanics.

### Removed
- `speed_manager.lua` deprecated and removed.

### Fixed
- None.

---

## [0.1.4] – 2025-07-20

### Added
- `speed_manager.lua` for automatic speed increments.
- New module added to `main.server.lua`.
- Speed tracking via leaderstats.

### Changed
- None.

### Removed
- Baseplate removed from `default.project.json` for a cleaner workspace.

### Fixed
- None.

---

## [0.1.3] – 2025-07-19

### Added
- None.

### Changed
- Project renamed from **"Walk 157,696 Studs for a Pizza"** to **"Walk 157,696 Studs to Meet TungTung Sahur"**.
- Replaced `RunService.Heartbeat` with a `while` loop to reduce update load by 93% and improve performance.

### Removed
- None.

### Fixed
- Fixed negative distance values being sent to players.

---

## [0.1.2] – 2025-07-19

### Added
- `studs_server.lua` and `studs_client.lua` for tracking walking distance.
- New modules added to `main.server.lua` and `main.client.lua`.

### Changed
- Renamed `leaderstats_manager.lua` to `leaderstats_init.lua`.

### Removed
- None.

### Fixed
- None.

---

## [0.1.1] – 2025-07-18

### Added
- Final biome: Marble.
- Logging system.
- `leaderstats_manager.lua` for player stat tracking.
- New modules added to `main.server.lua`.

### Changed
- Updated `main.server.lua` and `main.client.lua` to support new features.

### Removed
- None.

### Fixed
- None.

---

## [0.1.0] – 2025-07-17

### Added
- Biomes: Grass, Sand, Ice, Wood, Brick, Cobblestone.
- Initial project structure and file naming conventions.
- `README.md` and `CHANGELOG.md` files.

### Changed
- None.

### Removed
- None.

### Fixed
- None.
