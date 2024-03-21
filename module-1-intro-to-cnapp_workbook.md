
[IMAGEDIR]: "images/LeftHandMenu.png"

# Tenable Cloud Security Lab Workbook - Module 1

## Introduction

This document outlines test scripts designed as a startup guide:
1.  Onboard Tenable Cloud Security and AWS account
1.  Navigate the console  
    1.  Overview of menu options
1.  Overview of the Dashboard
1.  Integration tools
1.  Documentation/help
1.  Using CNAPPgoat tools

### Test Environment

- **Cloud Provider(s):** AWS  

**Note**:  *Tenable Cloud Security is a mulit-cloud solutions for AWS, GCP, and Microsoft Azure*
- **Tenable Cloud Security**
- **Lab Platform:** AWSJams

### Prerequisites

- Unique login to Tenable Cloud Security platform with [view, collaborator, administrator] log in permissions.
- AWS account.
- Pre-defined compliance standards and policies.

## Test Steps

### 1.  Onboaording AWS 

[Reference - Onboard an Account](https://docs.ermetic.com/v1/docs/onboard-aws#onboard-an-account)

1.  `Login` on to Tenable Cloud Security (https://cloud.tenable.com/
1.  `Select` to the **Tenable Cloud Security** menu tile
1.  Connect to AWS account  
    1.  `Navigate` to the left menu
    1.  `Select` **Accounts->AWS**
    1.  `Click` on **Add Account**
    1.  `Type` in a Name of the Account (ie.  **AWSDemoAccount**)
    1.  `Click` on **Active Regions** pull-down menu and 
        1.  `Select`  **us-east-1, us-east-2, us-west-1, and us-west-2**
        1.  Leave other selections blank
    1.  `Click` on **Next**
    1.  `Enable` the following features
        1.  Monitoring (read-only)
        1.  Remediation (read-write)
        1.  EC2 Instance Scanning
        1.  ECR Scanning
    1.  `Click` on **Next**
    1.  While the **Cloud Formation (AWS Console)** is selected
        1.  `Click` on **click here**
    This will generate the Cloud Formation Template with the proper IAM roles and permissions to connect with Tenable Cloud Security and guide you to **Create** a Cloud Formation stack.
    (ie.  **CloudFormation->Stacks->Create Stack**)

    1.  If you haven't done so already, `Login` to the AWS Console.
    1.  In the <u>AWS Console</u>  
        1.  `Verify` the parameters
        1.  `Scroll` down to the bottom of the page
        1.  `Check` the **Acknowledge** statement
        1.  `Click` on **Create Stack**
        1.  When completed `Click` on **Outputs**
        1.  `Copy/record` the **Role ARN**
    1.  On the <u>Tenable Cloud Security</u> dashboard
        1.   `Paste` the **Role ARN** from the step above.
        1.  `Click` on **Next** to complete
        **Note:  Cloud Trail configuration will not be completed in this module, however you can follow the directions in teh documenation if you want to continue adding Cloud Trail
        1.  `Click` on **Finish**
        1.  `Click` on **Done**

![Example of Completed Account](images/cloud_account-module-1.png)

**Note:** Depending on the size of the account (assests/services) the system can take several minutes to process the data in the account.

_________
    
### 1. Navigating Dashboard Console

#### Objective

Navigate to different areas of the dashboard for familiarization

#### Steps
##### Findings

1.  `Move` mouse pointer to far-left menu with icons.  Notice the pullout menu item  

<img src="images/LeftHandMenu.png" width="175">



[Click here for Left Menu Descriptions](https://docs.ermetic.com/docs/navigate-the-console#lefthand-navigation-menu)


1.  From the left menu, `Select`  **Dashboard**
1.  For quick view of your assets in your accounts
      1.  `Click` on **Inventory->AWS**
      1.  `Click` on **IAM Roles**
      1.  Note the filter's on the top bar of the table
      1.  Filter on Severity level  
      1. `Click` on the plus (+) sign on the top of the dashboard
      1.  `Click` on **Finding Severity**
1.  From the left menu, `Click` on **Findings**
      1.  `Click` on **Severity** 
      1.  `Select` **Critical** and **High** 
      1.  The dashboard will only show Findings of severity level Critical and High
1.  From the left menu, `Click` on **Dashboard**

1.  Using the table below to view the different widgets of the dashboard
1.  Form the main dashboard:
   1. `Click` on **Compute Resources->Lambda Functions**
   1.  This displays the list of Lambda functions
   1. `Click` on **Compute Resources->

#### Explanation of Dashboard Widgets

| **Dashboard Widgets** | **Description** |
|-----------------------|-----------------|
|Organiziation View     | The top-left bar of the dashboard shows an overview of the connected accounts in each one of the cloud service provider (CSP) organizations. |
| Asset Inventory (Resources) |  Inventory (Resources)	The top-right bar of the dashboard shows a breakdown of assets in your environment by resource category. |
| Open Findings | See a high-level overview of open findings in Tenable Cloud Security. Findings represent at-risk identities and resources, including hard-to-spot toxic combinations. |
| Trends | Track the status of findings by viewing a snapshot of activity data over a set period of time. |
| Compliance | Ensure compliance with common industry standards and security best practices. |
| Toxic Combinations | View resources with multiple risks that, when combined, are both hard-to-spot and pose a greater threat to your organization |
| If you have only 5 minutes | If you’re short on time, or just want to focus on the most serious issues, use this list to assess and remediate the highest priority findings in your environment. |
| Resources Exposing Secrets | Assess and remediate vulnerable resources that expose important secrets (such as passwords, credentials, and keys). Such resources are often overlooked, and can be leveraged by attackers. |
| Public Resources | Assess and remediate findings related to public resources, categorized by type, and prioritized by risk severity. |
| Anomaly Detection | Track suspicious activity in your environment by viewing the number of open anomaly-related findings over time (last 7, 30, or 90 days) | 
| Top Accounts at Risk | Assess and remediate the most at-risk accounts in your organization, with a breakdown of the number of findings per severity level. |
| Top Finding Types | Assess and remediate the highest risk finding types, with a breakdown of the number of findings per severity level. |
| Workload Protection | <ul><li>Vulnerability Status. View a breakdown of machines by the highest severity vulnerability that was found on them, along with the number of opened findings. </li><li> Critical CVEs. View critical CVEs found on your machines, prioritized by those with known exploits and those that were recently seen. </li<li>Operating System Status. View a breakdown of machines by the status of the installed OS. Such issues can indicate that workload security is compromised, and should be remediated by updating the OS </li></ul>|

##### Table of Toxic Combinations

- **3rd party** identity with access to **sensitive data**  
- App engine service with critical vulnerabilities and high privileges
- Cloud run service with critical vulnerabilities and high privileges
- ECS service with critical vulnerabilities and high privileges
- External principal with high privileges
- External principals with access to sensitive data
- Guest user with high privileges
- Guest user access to sensitive data
- IAM user with no MFA and high privileges
- Public cloud run service with critical vulnerabilities / high privileges
- Public data resources with sensitive data
- Public storage accounts with shared key access
- Public ECS service with critical vulnerabilities / high privileges
- Public functions with high privileges
- Public virtual machine with high privileges
- Public workloads with critical vulnerabilities / high privileges
- Public workloads with an unpatched OS / high privileges

##### Filtering Data

1.  `Click` on the link below to learn how to  filter the data throughout in the console to find specific resources, activities, and other types of data.

[Filtering Data](https://docs.ermetic.com/docs/filter-data#filter-data-in-tables)

#### Summarize
#### Review Questions






_________



1.  User Profile



1. **Initiate Discovery:**
   - Navigate to the asset discovery section.
   - Trigger a manual discovery scan or wait for the next scheduled scan.

1. **Verify Discovery:**
   - Check the list of discovered assets in Tenable Cloud Security.
   - Confirm that all deployed resources are accurately identified and listed.

1. **Documentation:**
   - Take screenshots or export the list of discovered assets.
   - Document any discrepancies or issues.

### 1. Compliance Monitoring

#### Objective

Ensure that Tenable Cloud Security can assess cloud environments against pre-defined compliance standards and policies.

#### Steps

1. **Define Compliance Standards:**
   - Verify that compliance standards (e.g., CIS AWS Foundations Benchmark) are configured in the platform.

1. **Conduct Compliance Scan:**
   - Initiate a compliance scan against your cloud environment.

1. **Evaluate Results:**
   - Review the compliance assessment report.
   - Check for any violations or non-compliant resources.

1. **Remediation Verification:**
   - Apply remediation steps to non-compliant resources.
   - Re-run the compliance scan to verify fixes.

1. **Documentation:**
   - Record findings, remediation actions, and post-remediation results.

### 1. Vulnerability Assessment

#### Objective

Test the capability of Tenable Cloud Security to identify vulnerabilities within the cloud environment.

#### Steps

1. **Setup:**
   - Ensure cloud resources with known vulnerabilities are present in your test environment.

1. **Run Vulnerability Scan:**
   - Navigate to the vulnerability assessment section.
   - Initiate a scan of your cloud environment.

1. **Analyze Results:**
   - Examine the vulnerability assessment report for identified risks.
   - Verify that known vulnerabilities are detected.

1. **Remediation and Reassessment:**
   - Address identified vulnerabilities.
   - Perform another scan to confirm the effectiveness of remediation measures.

1. **Documentation:**
   - Document the initial findings, remedial actions taken, and the results of the reassessment scan.

### Conclusion

