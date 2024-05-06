#! /bin/sh
#  This script is to be run on an interval to keep activity alive in an workload
#  to demonstrate activity within a script
# 
#  list s3
aws s3 ls

#  run a series of privilaged commands on IAM to displaly current assigned policy

export ROLENAME=$(aws sts get-caller-identity | jq .Arn | awk -F'/' '{print $2}')
echo $ROLENAME
aws iam list-attached-role-policies --role-name $ROLENAME

