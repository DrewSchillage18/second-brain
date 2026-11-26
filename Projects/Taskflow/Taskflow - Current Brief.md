## Goal
Use Taskflow as my day-to-day task manager. It has replaced my Notion setup, which I no longer use.

## Last reviewed
2026-11-25

## What works today
- Dragging a task card between columns on the Status board updates its status (tested).
- Planner with all 24 hours, scrolling All Day boxes and an Unscheduled tray that only scrolls up and down; Created Time in Tasks and Completed; project percentages on the Dashboard; "＋ Existing task" on lists; "Open Planner" on Focus; ✕ on the delete notice; numbered lists that start at any number. Tested in the test copy on 2026-11-22, not yet with real data.
- Repeating tasks (Repeat menu on a task) and the Insights view (Review, Stats, Time Log, Reports). Built and tested in the test copy on 2026-11-22.
- **Motion update (checkpoint, 2026-11-25):** all 62 Motion Menu picks and a Motion setting (Full / Reduced / Off) in the side menu. New features: pinned items, search and an icon rail in the side menu; Tasks Group by and Row density; project colour (follows the icon) and a health dot; week numbers; Execution Order minimap and Zoom to fit; Completed layouts and a month shelf; Focus day ring and Focus on one task; a templates gallery for new lists. Tested in the test copy; published as Artifact Version 276 (app version 363).

## What still needs work
- Recurring tasks: built on 2026-11-22; check with a real task that finishing it creates the next one on the correct date.
- Backup and restore: Verify that a real-data restore recovers all current tasks and Library contents.
- Mobile access: be able to view and add tasks away from my computer.
- Motion: confirm on screen with a real mouse the few effects the test copy couldn't show (tilted card while dragging, Planner block bounce, Library card tilt, "Step cleared ✓", idle logo breathing).

## Next milestone
- Verify that a real-data restore recovers all current tasks and Library contents.
- Check with a real task that finishing a repeating task creates its next one on the correct date.

## Where to look
- Project folder: `~/Documents/Claude/Taskflow`
- Run it with `python3 taskflow_server.py`, then open http://localhost:8766
- Online copy (pinned Artifact): https://claude.ai/artifact/UVFqh4APqxpWga4FxhnkwG
- Frozen release copies: `Taskflow/releases/` (latest: `2026-11-25 motion update (v363)`, with a README on how to go back to it)

Related note: [[Taskflow - Decision Log]]

## Handoff

**Verified**
- Dragging a task card between columns on the Status board updates its status. Tested personally.
- Restoring from a backup worked once, on Nov 17, in a test browser tab whose storage was wiped. It hasn't been tested on real data.
- The motion update's features and fixes were checked one by one in the test copy on 2026-11-22 to 2026-11-25, and the published Artifact was compared file by file with the local app.

**Still open**
- Backup and restore: Verify that a real-data restore recovers all current tasks and Library contents.
- Recurring tasks: check with a real task that finishing it creates the next one on the correct date.
- Mobile access: done means opening Taskflow as a proper app on a phone, with a layout that works on a phone screen.

**Key decision: automatic backups built into the Taskflow server (2026-11-17)**
One program, `taskflow_server.py`, runs the app and saves backups to `Taskflow/backups/localhost/`. Test data is saved separately.
**Why:** browser storage was wiped and about 16 tasks plus everything in Library were lost with no copy to restore. Putting the app and the backups in one program means Taskflow can't run without backups.

**Next action**
Clear the browser's Taskflow data and confirm all real tasks come back from the latest backup. No target date for the milestone.
