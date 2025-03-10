#!/bin/bash

log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

log_message "Start. Update package list..."
if sudo apt-get update -y; then
    log_message "Package list. Done!."
else
    log_message "Package list. ERROR!."
    exit 1
fi

log_message "Start. Upgrade system..."
if sudo apt-get upgrade -y; then
    log_message "Upgrade system. Done!"
else
    log_message "Upgrade system. ERROR!"
    exit 1
fi

log_message "Start. Remove don't use package..."
if sudo apt-get autoremove -y; then
    log_message "Remove. Done!."
else
    log_message "Remove. ERROR."
    exit 1
fi

log_message "Successful."