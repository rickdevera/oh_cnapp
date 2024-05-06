#!/bin/bash

# Update packages and install Git and cronie (if not installed)
yum update -y
yum install -y git cronie jq

# Define variables
GITHUB_REPO_URL="https://raw.githubusercontent.com/rickdevera/oh_cnapp/main/ambassador/setup/.sh"
LOCAL_SCRIPT_PATH="/usr/local/bin/OHcnapp-cron_script.sh"

# Download the script file from GitHub
curl -o $LOCAL_SCRIPT_PATH $GITHUB_REPO_URL

# Make the downloaded script executable
chmod +x $LOCAL_SCRIPT_PATH

# Add a cron job to run the script every 30 minutes
(crontab -l 2>/dev/null; echo "*/30 * * * * $LOCAL_SCRIPT_PATH") | crontab -

# Start the crond service
service crond start
