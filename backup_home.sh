# Start date and end date for the backup
START_DATE="2025-05-19"
END_DATE="2025-05-26"

# Today's date
TODAY=$(date +%F)

# Date range check
if [[ "$TODAY" < "$START_DATE" || "$TODAY" > "$END_DATE" ]]; then
    exit 0  # Exit if today is not within the backup range
fi

# Source directory and destination directory
SOURCE="/home/your_username/path"
DESTINATION="/your_destination/path"

# Backup name
DATE=$(date +'%Y-%m-%d')
BACKUP_NAME="your_backupName_$DATE.tar.gz"

# Backup
tar -czf "$DESTINATION/$BACKUP_NAME" "$SOURCE"