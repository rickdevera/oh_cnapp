#!/bin/bash

# Variables
POLICY_NAME="OHcnappPolicy001"
ROLE_NAME="OHcnappRole001"
PROFILE_NAME="ohcnappgoat001"

# Create a policy with full Administrator access
aws iam create-policy \
    --policy-name $POLICY_NAME \
    --policy-document '{
        "Version": "2012-10-17",
        "Statement": [
          {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
    }' \
    --profile $PROFILE_NAME

# Update the policy to allow only EC2 and S3 operations
POLICY_ARN=$(aws iam list-policies --query "Policies[?PolicyName=='$POLICY_NAME'].Arn" --output text --profile $PROFILE_NAME)

aws iam create-policy-version \
    --policy-arn $POLICY_ARN \
    --policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": [
                    "ec2:*", 
                    "s3:*"
                ],
                "Resource": "*"
            }
        ]
    }' \
    --set-as-default \
    --profile $PROFILE_NAME

# Create a new role
aws iam create-role \
    --role-name $ROLE_NAME \
    --assume-role-policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Principal": {
                    "Service": "ec2.amazonaws.com"
                },
                "Action": "sts:AssumeRole"
            }
        ]
    }' \
    --profile $PROFILE_NAME

# Attach the policy to the role
aws iam attach-role-policy \
    --role-name $ROLE_NAME \
    --policy-arn $POLICY_ARN \
    --profile $PROFILE_NAME
