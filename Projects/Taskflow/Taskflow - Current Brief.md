## Goal
Use Taskflow as my day-to-day task manager. It has replaced my Notion setup, which I no longer use.

## Last reviewed
2026-11-22

## What works today
- Dragging a task card between columns on the Status board updates its status (tested).
- Planner with all 24 hours, scrolling All Day boxes and an Unscheduled tray that only scrolls up and down; Created Time in Tasks and Completed; project percentages on the Dashboard; "＋ Existing task" on lists; "Open Planner" on Focus; ✕ on the delete notice; numbered lists that start at any number. Tested in the test copy on 2026-11-22, not yet with real data.

## What still needs work
- Recurring tasks: Build recurring tasks, then verify that completing one creates its next occurrence on the correct date.
- Backup and restore: Verify that a real-data restore recovers all current tasks and Library contents.
- Mobile access: be able to view and add tasks away from my computer.

## Next milestone
- Verify that a real-data restore recovers all current tasks and Library contents.
- Build recurring tasks, then verify that completing one creates its next occurrence on the correct date.

## Where to look
- Project folder: `~/Documents/Claude/Taskflow`
- Run it with `python3 taskflow_server.py`, then open http://localhost:8766

Related note: [[Taskflow - Decision Log]]

## Handoff

**Verified**
- Dragging a task card between columns on the Status board updates its status. Tested personally.
- Restoring from a backup worked once, on Nov 17, in a test browser tab whose storage was wiped. It hasn't been tested on real data.

**Still open**
- Backup and restore: Verify that a real-data restore recovers all current tasks and Library contents.
- Recurring tasks: Build recurring tasks, then verify that completing one creates its next occurrence on the correct date.
- Mobile access: done means opening Taskflow as a proper app on a phone, with a layout that works on a phone screen.

**Key decision: automatic backups built into the Taskflow server (2026-11-17)**
One program, `taskflow_server.py`, runs the app and saves backups to `Taskflow/backups/localhost/`. Test data is saved separately.
**Why:** browser storage was wiped and about 16 tasks plus everything in Library were lost with no copy to restore. Putting the app and the backups in one program means Taskflow can't run without backups.

**Next action**
Clear the browser's Taskflow data and confirm all real tasks come back from the latest backup. No target date for the milestone.
