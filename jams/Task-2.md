## Findings Workflow
#### Goal:  Walk through the Findings Workflow

#### Prerequisites
1.  On the **Top-Right**, `select` **All accounts** drop down and `choose` **ambassador-lab** under the **training** hierarchy. 


#### Task Summary

The following workflow describes one possible approach you can take to analyze 
and remediate findings in your environment. 

This lab walks you step-by-step through the lifecycle of a finding. 
In this case, we will focus on an **Inactive IAM Role  (OrganizationalAccountAccessRole)** finding 
with **Critical** severity in an AWS production environment


#### Tasks
##### Findings

1.  From the Dashboard, `click` on  **Findings** menu item on the left-menu bar
1.  On the top-right side of dashboard
1.  `Filter` by **Critical** severity
1.  `Filter` the **IAM** category
1.  The result should  should display a listing of IAM roles

##### Detailed Findings
1.  `Click` on **OverPriviledged IAM Role** for the role 
1.  `Review` the finding details and contextual information such as
    - Root cause of the finding.
    - The scope of the finding.
    - The potential risk it imposes on your environment.
    - An explanation of the severity of the finding.
    - Permissions and usage
    - Remediation Steps
    - Activity Details


##### Filter Findings by Policy

1.  Return to list of **Findings**
1.  `Search` for a **Policies** with the string name **malicious**
1.  `Click` on the **Policy** filter and `Enter` the word **malicious**
1.  `Select` all the policies
1.  Note the listing of all findings
1.  `Clicking` on each listing will provide details, files, and remediation recommendations.

#### Validation Question

1.  `Find` and `Enter` the the name of the <u>Secret</u> access key for the user **labgoat**


<!--
Find a CloudFormation template that has a **secret** *access key* embedded in the CFN file.  

1.  Search, in the Findings menu, for the name of the Policy with the string **secrets**

-->