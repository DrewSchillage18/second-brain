## Automatic backups built into the Taskflow server

- **Date:** 2026-11-17
- **Decision:** Taskflow backs up its data automatically. One program, `taskflow_server.py`, runs the app and saves backups to `Taskflow/backups/localhost/`. It saves `latest.json` within about 20 seconds of any change, keeps a dated snapshot up to every 10 minutes (newest 200 kept), and restores automatically if browser storage is wiped. Test data on 127.0.0.1 is saved separately so it can't overwrite real data.
- **Why:** Browser storage was wiped and about 16 tasks plus everything in Library (lists, notes, folders, binders) were lost with no copy to restore. I merged the app and the backup into one server so Taskflow can never run without backups.
- **Source:** Claude Code chat "Designing Taskflow" (Nov 17, 2026). A restore was tested by wiping a test tab's storage.
- **Status:** Current

## Motion with a Full / Reduced / Off setting
- **Date:** 2026-11-25
- **Decision:** Taskflow animates (view changes, ticks, counts, drag feedback and more, from the Motion Menu picks), and a Motion setting in the side menu chooses Full, Reduced or Off. If the Mac's Reduce motion setting is on, Full acts like Reduced. Drop highlights (where a dragged card will land) stay on at every level.
- **Why:** I wanted the app to feel modern, calm and polished, with a way to tone it down. Drop highlights are feedback, not decoration.
- **Source:** Claude Code chat, 2026-11-22 to 2026-11-25.
- **Status:** Current

## Project colour follows the project icon
- **Date:** 2026-11-25
- **Decision:** A project's colour (column tint, card edges, cover band, Execution Order row) is taken from its icon's colour automatically, including for new projects. An icon with no colour gives gray. A colour chosen on the project page overrides it; "No colour" turns it off.
- **Why:** I wanted every project coloured without setting each one by hand.
- **Source:** Claude Code chat, 2026-11-25.
- **Status:** Current

## Big checkpoints are kept as frozen release copies
- **Date:** 2026-11-25
- **Decision:** At a big checkpoint, the whole app is copied into `Taskflow/releases/<date> <name> (v<version>)/` with a README on how to go back to it. The first is `2026-11-25 motion update (v363)`.
- **Why:** `app/` and the published Artifact both change with every edit, and the backups folder only holds data, so there was no lasting copy of a good version of the app.
- **Source:** Claude Code chat, 2026-11-25.
- **Status:** Current
