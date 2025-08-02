#!/bin/bash


SOURCE_DIR="$HOME/important_files"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
EMAIL="saeedmarefatofficial@gmail.com"

mkdir -p "$BACKUP_DIR"


if tar -czf "$BACKUP_FILE" "$SOURCE_DIR"; then
    echo "Backup created successfully: $BACKUP_FILE" | mail -s "Backup Success" "$EMAIL"
else
    echo "Backup failed!" | mail -s "Backup FAILED" "$EMAIL"
    exit 1
fi


if [ -f "$BACKUP_FILE" ]; then
    echo "Backup verification passed for $BACKUP_FILE" | mail -s "Backup Verified" "$EMAIL"
else
    echo "Backup verification FAILED" | mail -s "Backup Error" "$EMAIL"
fi
