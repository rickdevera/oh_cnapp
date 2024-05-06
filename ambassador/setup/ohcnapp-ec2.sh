#!/bin/bash

# Usage: ./ohcnapp-ec2 start|stop

ACTION=$1  # start or stop
TAG_NAME="platform"
TAG_VALUE="lab"

if [[ "$ACTION" != "start" && "$ACTION" != "stop" ]]; then
    echo "Usage: $0 start|stop"
    exit 1
fi

# Fetch instance IDs based on the tag
INSTANCE_IDS=$(aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].InstanceId" \
    --filters "Name=tag:$TAG_NAME,Values=$TAG_VALUE" \
    --output text)

if [ -z "$INSTANCE_IDS" ]; then
    echo "No instances found with tag $TAG_NAME=$TAG_VALUE."
    exit 0
fi

# Start or stop instances based on the command line argument
if [ "$ACTION" == "start" ]; then
    echo "Starting instances: $INSTANCE_IDS"
    aws ec2 start-instances --instance-ids $INSTANCE_IDS
elif [ "$ACTION" == "stop" ]; then
    echo "Stopping instances: $INSTANCE_IDS"
    aws ec2 stop-instances --instance-ids $INSTANCE_IDS
fi
