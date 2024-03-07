# oh_cnapp

## Ambassador Branch

**aws-jam-tenable-cloud-security-v2.yaml** - Cloud Formation Template for bulding the lab environment

#### Policy Permissions for Onboarding

**Monitoring (read-only)** (***monitoring_policy.json***) 
- Gain full visibility for all cloud assets, including information about permissions, account usage, and security configurations. Additional permissions may be required to read the CloudTrail for the onboarded account. For more information about required permissions, see the documentation.

**Remediation (read-write)** (***remediation_policy.json***)
- Allow Tenable to make changes in your environment. This lets you automatically remediate findings with one click, for example (One-click remediation is still available via OTP without these permissions). For more information about required permissions, see the documentation.

**Workload Protection**  (***workload_protection_policy.json), (container_scanningN_policy.json***)
- 
Scan workloads and container registries for vulnerabilities and misconfigurations.

**CloudTrail (S3)**  (***cloudtrail_policy.json***) 
- To analyze cloud activity logs, permissions are required to read from the S3 bucket storing CloudTrail data. If the bucket belongs to the account you are currently onboarding, select this option

**Just-in-time Access (AWS Identity Center).**  (***jit_policy.json***) 
- Grant users access to cloud accounts for a predetermined period of time and on an as-needed basis. If the account you are onboarding is the management account, or has permissions to manage AWS Identity Center, additional permissions are required. For more information about required permissions, see the documentation




**Ambassador Lesson Plan.md** - Lesson Plan for Ambassador Training
