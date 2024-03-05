### For each user
`aws iam list-user-policies`  
`aws iam list-attached-user-policies`  
`aws iam list-groups-for-user`

### For each group:
`aws iam list-group-policies` 
`aws iam list-attached-group-policies` 

### List of policies
aws iam list-policy-versions --policy-arn

aws iam get-policy-version --policy-arn arn:aws:iam::123456789012:policy/MyPolicy --version-id vX

1.  `aws sts-get-caller-identify --profile demogoat`
2.  
