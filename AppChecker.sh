#!/bin/bash

# Configurations
APP_URL="http://3.111.58.159:4499"  # URL of the application
LOG_FILE="app_uptime.log"  # Log file for status

# Function to log status
log_status() {
  local status=$1
  echo "[$(date)] Application is $status" >> "$LOG_FILE"
}

# Function to check application status
check_status() {
  http_status=$(curl -s -o /dev/null -w "%{http_code}" "$APP_URL")

  if [[ "$http_status" -eq 200 ]]; then
    log_status "up"
    echo "Application is up."
  else
    log_status "down"
    echo "Application is down."
  fi
}

# Run the status check
check_status