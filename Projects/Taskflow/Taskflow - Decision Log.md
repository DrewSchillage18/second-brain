## Automatic backups built into the Taskflow server

- **Date:** 2026-11-17
- **Decision:** Taskflow backs up its data automatically. One program, `taskflow_server.py`, runs the app and saves backups to `Taskflow/backups/localhost/`. It saves `latest.json` within about 20 seconds of any change, keeps a dated snapshot up to every 10 minutes (newest 200 kept), and restores automatically if browser storage is wiped. Test data on 127.0.0.1 is saved separately so it can't overwrite real data.
- **Why:** Browser storage was wiped and about 16 tasks plus everything in Library (lists, notes, folders, binders) were lost with no copy to restore. I merged the app and the backup into one server so Taskflow can never run without backups.
- **Source:** Claude Code chat "Designing Taskflow" (Nov 17, 2026). A restore was tested by wiping a test tab's storage.
- **Status:** Current
