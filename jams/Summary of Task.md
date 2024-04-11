## Task 1

### Management / Dashboard review
#### Goal:  The goal of this task is to navigate around the UI
#### Summary of Task
1.  Review the Dashboard
    1.  Environment review
    1.  View Network resources
    1.  Show instances and the details
    1.  Show security groups
    1.  Toxic Combinations
    1.  5 minute fix

#### Steps
Login to the Tenable Cloud Security Dashboard (formally Ermetic)
1.  `Login`` into https://us.app.ermetic.com
Most all the work will be done through this environement
1.  On the **Top-Right**, `select`  **AWSJams->awsjamsuser** under the **Organization** hierarchy

The dashboard will show an organizations asset inventory (identifies, compute, containers, data, network, security, etc.) across supported cloud platforms.

1.  `Click` on **IAM Resources** to view total resources found by the across all cloud platform accounts.
1.  Each resource are links to drill down and view individual resources:
    1.  `Click` on **IAM Resources->IAM users** to drill down and view a list of IAM users.
    1.  `Click` on **awsjamsuser1**
        1.  Click through the top menu tab as defined in the table below and validate changes.

        | Menu | Description | 
        |------|-------------|
        | Info | Learn more about the resource |
        | Findings | View and Manage associated findings |
        | Permissions | Visual permission mapping |
        | Network | Visualize network exposure <sup>(not displayed for IAM)</sup> |
        | Activity Log | Investigate resource activity |
        | Software | Visualize software packages <sup>(not displayed for IAM)</sup> |
        | Vulnerabilities | List of vulnerabilties <sup>(not displayed for IAM)</sup> |

    1.  `Return` to the dashboard and `click` on **Compute Resources->EC2 Instances**
    1.  `Click` on 3-Tier-BastionHost
    1.  `Select` the **Info** menu tab
    1.  `Search` for Role, take note on the Role assigned to the EC2 instance.  If a *Role* exists, this Instance will run under the assigned *Role*.
    1.  `Click` on the **Findings** tab
    1.  `Click` on the **Resource** filter button and search for the **Role** ***(awsjams-ec2-role)*** found in the **Info** tab.
    1.  The same information can be found by `Selecting` **Findings** on the left and filtering by **Resource**



1.  `Go Back` to main dashboard

#### Validation Question 
#### Enter the question as a comma separated answer, in the order shown

1.  How many IAM resources are being reported?
1.  How many EC2 Instances?
1.  Total number of Critical and High severity Findings?
1.  How many identities with Critical Risks?
1.  How many Resources are exposing Secrets?
1.  How many machines are running with **High Privileges**?
1.  How many IAM users with Priviledge permissions?
1.  How many 5 minute fixes were found?
________

## Task 2:  Toxic Combinations and Quick Remediations
#### Goal: 
#### Task Summary
1.  View Findings listed as Toxic Combinations
1.  View "Quick" Remediations - "If you only have 5 minutes"

#### Tasks
##### Toxic Combinations

1.  `Navigate` to the dashboard,  
1.  `Scroll` down to the **Toxic Combinations** widget.
1.  `Click`  <u>**1 public virtual machine with high privileges**</u>
1.  `Click` on the EC2 instance to **Review the Findings**
1.  `Click` on **Findings**

A list of **Findings will be displayed.
1.  `Click` on each **Finding** and `View` the **Remediation Steps**

1.  `Click` on the **kabab**  icon (denoted by a stack of 3 dots)
1.  Note the selections that can be made from each Finding

|  Menu item | Description |
|-------------|------------|
| Resolve | Mark the finding as resolved |
| Snooze | Delay remediation to a later date |
| Comment | Add comments to the listed Findings |
| Exclude from this policy | Exclude the selected resource to prevent potential findings of the same type to be associated with the resource | 

_________

##### If you only have 5 minutes

1.  `Navigate` to the dashboard
1.  `Scroll` down to **If you only have 5 minutes
1.  `Click` on one of the Finding:  **<u>Lambda function is exposing secrets</u>**
1.  Carefully review the information on this page to answer the validation questions
1.  This will drill down into the details of the Findings and any relevant information for example:
  - What was the root cause
  - Potential risk to the environment
  - Scope of the findings
  - Severity
  - Suggested Remediation Steps

#### Validation Question
1.  While displaying the list of Findings, what **Menu item** would you select to delay remediation at a later date?
1.  How many **identities** were granted permissions allowing them to read your secrets?

________
## Task 3
#### Goal:   Investigate and assess any risk that identies pos to your environment.

<u>Tenable Cloud Security Identity Intelligence</u> lets you view a breakdown of identities by severity level to map identities and their associated permissions to potential risks in your environment. Identities include users, roles, service identities, third-party identities, and federated identities.

You can use the Identity Intelligence page to learn important information about identities in your environment. For example, you can:

- See all privileged third party identities.
- See admin users that have access keys enabled, but that do not have multi-factor authentication (MFA) enabled.

1.  In the Dashboard, `Select` (thumbprint icon)  and `Expand` **Identity and Access Management->Identity Intelligence**.
1.  `View` the identity widgets at the top of the page to view the distribution of risk severity levels across all identities, and across specific types of identities (users, service identities, federated identities, and 3rd party identities).
1.  `Filter`  data in the table to modify the scope of the visible data. For example, under Labels, you can select 3rd Party to filter for third party identities. See Identity Column Data for information about the data available in the table.
1.  Analyze the risk that the identity poses to your environment. See Risk Level for Identities.
1.  Drill down into an identity to view granular information about it.

##### 

#### Validation Question
1.  Name which custom policies are inherited from the Organization
1.  Name which compliance policy are inherited from the Organization

________
## Task 4
#### Validation Question
Exposed VPC endpoints
Remediation of Identify Overpriviledged IAM roles
________

