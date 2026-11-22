# Vault Backup

The vault is backed up to the private GitHub repository `DrewSchillage18/second-brain`.

**How it runs:** every hour, macOS runs `.automation/backup.sh` (in this vault's hidden `.automation` folder). It saves a new Git version if anything changed, then pushes to GitHub. The scheduled job is named `com.secondbrain.backup` and lives at `~/Library/LaunchAgents/com.secondbrain.backup.plist`.

**Check it's working:** open `~/Library/Logs/vault-backup.log`. Each run adds a dated line ending in "GitHub is up to date."

**Back up right now:** `~/"Second Brain"/.automation/backup.sh`

**Turn it off:** `launchctl bootout gui/$(id -u)/com.secondbrain.backup`

**Sign-in:** a GitHub personal access token saved in the Mac Keychain (entry for github.com). When it expires, pushes fail; make a new token and push once by hand to save it.
