#!/bin/bash

Configurations

SOURCE_DIR="/home/ubuntu/wisecon"

Directory to back up

DEST_DIR="/home/ubuntu/backup"

Local backup destination

LOG_FILE="backup.log" Log file for the operation

Ensure destination directory exists

Perform the backup

echo "starting backup..." I tee a "SLOG FILE"

if rsync -av--delete "SSOURCE_DIR/" "$DEST_DIR/" &>> "$LOG_FILE"; then

echo "Backup completed successfully!" | tee a "SLOG_FILE"

else

echo "Backup failed!" | tee -a "SLOG_FILE"

fi