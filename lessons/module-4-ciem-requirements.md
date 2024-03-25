
[IMAGEDIR]: "images/LeftHandMenu.png"

# Tenable Cloud Security Lab Workbook - Module 2

## Introduction



### Test Environment

- **Cloud Provider(s):** AWS  

**Note**:  *Tenable Cloud Security is a mulit-cloud solutions for AWS, GCP, and Microsoft Azure*
- **Tenable Cloud Security**
- **Lab Platform:** AWSJams

### Prerequisites

- Unique login to Tenable Cloud Security platform with [view, collaborator, administrator] log in permissions.
- AWS account.
- Pre-defined compliance standards and policies.

### Requirements

_______________
Below are individual requirements categorized by use-cases and the steps used to meet the requirements.

#### Effective Permissions

- Visibility into cloud identities (IAM Users/Groups, AWS SSO, Azure RBAC, Azure AD, Cloud Identity, GCP IAM, external identities, etc.)
- Visibility into effective permissions of federated identities (e.g. Okta, Azure AD, Ping Identity)
- Visibility into effective permissions in AWS (IAM Policies, Conditions, Resource policies, PB, SCPs, etc)
- Visibility into effective permissions in Azure (human identities, service principals, external identities, etc)
- Visibility into effective permissions in GCP (IAM, user-managed keys, conditions, etc)
- Visualization of effective permissions in cloud (identity perspective, resource perspective)
- Analysis of effective permissions in cloud (query resources identities, effective access)

#### Identity Governance

- Risk-based visibility into cloud identities 
- Contextual risk prioritization for identities
- Visibility into 3rd party access
- Visibility into misconfigured identities (e.g. inactivity, static keys, MFA)

#### Least Privilege

- Analyze excessive permissions based on cloud provider APIs
- Analyze excessive permissions based on cloud activity logs
- Visualize excessive permissions based on analysis

#### Remediation

Generate least-privilege recommendations for AWS
Generate least-privilege recommendations for Azure
Generate least-privilege recommendations for GCP
IaC templates (e.g. Terraform, CloudFormation) for remediation
Automatic remediation for identities with excessive access
