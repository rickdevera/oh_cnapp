## Findings Workflow
#### Goal:  Walk through the Findings Workflow

#### Prerequisites
1.  On the **Top-Right**, `select` **All accounts** drop down and `choose` **AWS->Production Labs->awsjams** under the **Organization** hierarchy. 


#### Task Summary

The following workflow describes one possible approach you can take to analyze 
and remediate findings in your environment. 

This lab walks you step-by-step through the lifecycle of a finding. 
In this case, we will focus on an **Inactive IAM Role  (OrganizationalAccountAccessRole)** finding 
with **Critical** severity in an AWS production environment


#### Tasks
##### Findings

1.  From the Dashboard, `click` on  **Findings* menu item on the left (*Magnifying glass*)
1.  On the top-right side of dashboard, `click` on the **Star** (icon) filter
1.  `Filter` by **Critical** severity
1.  `Filter` the **IAM** category
1.  The result should  should display a listing,  **Inactive IAM role** with the resource named **OrganizationalAccountAccessRole**  

##### Detailed Findings
1.  `Click` on **Inactive IAM Role** for the role **OrganizationAccountAccessRole**
1.  Review the finding details and contextual information such as
    - Root cause of the finding.
    - The scope of the finding.
    - The potential risk it imposes on your environment.
    - An explanation of the severity of the finding.
    - Permissions and usage
    - Remediation Steps
    - Activity Details


1.  `Click` Role named **OrganizationAccountAccessRole**.

1. Note the numbmer of services used and how often these services are being used.  This provides a more detailed assessment and the ability remediate granular permissions.


#### Validation Question

1.  Enter the name of the managed policy attached to this role