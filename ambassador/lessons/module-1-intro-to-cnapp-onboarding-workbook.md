
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
Instructor will walk you through the steps for adding an account to AWS.


[Reference - Onboard an Account](https://docs.ermetic.com/v1/docs/onboard-aws#onboard-an-account)

1.  `Login` on to Tenable Cloud Security (https://cloud.tenable.com/
1.  `Select` **Sign in via SSO** in the login window.
1.  `Select` to the **Tenable Cloud Security** menu tile


1.  Connect to AWS account  
    1.  `Navigate` to the left menu
    1.  `Select` **Accounts->AWS**
    1.  `Click` on '+' icon and `Select` **Add Account**
    1.  `Type` in a Name of the Account (ie.  **ambassador-ro**)
    1.  `Select` **AWS Partition->Public**
    1.  `Click` on **Active Regions** pull-down menu and 
        1.  `Select`  **us-east-1, us-east-2, us-west-1, and us-west-2**
        1.  Leave other selections blank
    1.  `Click` on **Next**
    1.  `Enable` the following features
        1.  Monitoring (read-only)
        1.  EC2 Instance Scanning
        1.  ECR Scanning
    1.  `Click` on **Next**
    1.  While the **Cloud Formation (AWS Console)** is selected
        1.  `Click` on **click here**
    This will generate the Cloud Formation Template with the proper IAM roles and permissions to connect with Tenable Cloud Security and guide you to **Create** a Cloud Formation stack.
    (ie.  **CloudFormation->Stacks->Create Stack**)
____
##### On AWS Console
    1.  If you haven't done so already, `Login` to the AWS Console.
    1.  In the <u>AWS Console</u>  
        1.  `Verify` the parameters
        1.  `Scroll` down to the bottom of the page
        1.  `Check` the **Acknowledge** statement
        1.  `Click` on **Create Stack**
        1.  When completed `Click` on **Outputs**
        1.  `Copy/record` the **Role ARN**
_____
##### On Tenable Cloud Security Console

    1.  On the <u>Tenable Cloud Security</u> dashboard
        1.   `Paste` the **Role ARN** from the step above.
        1.  `Click` on **Next** to complete
        **Note:  Cloud Trail configuration will not be completed in this module, however you can follow the directions in teh documenation if you want to continue adding Cloud Trail
        1.  `Click` on **Finish**
        1.  `Click` on **Done**

![Example of Completed Account](images/cloud_account-module-1.png)

**Note:** Depending on the size of the account (assests/services) the system can take several minutes to process the data in the account.

_________
    
### 1. Learning Console

#### Objective

Navigate to different areas of the dashboard for familiarization, learn to filter findings.

#### Steps

1.  `Move` mouse pointer to far-left menu with icons.  Notice the pullout menu item  

<img src="images/LeftHandMenu.png" width="175">


1.  For an explation of the each menu item, `click` the 
[link.](https://docs.ermetic.com/docs/navigate-the-console#lefthand-navigation-menu)


1.  `Click` on the **top-right** menu button labeled **All Accounts**
1.  `Verify` the cloud account to view.
- **Note:** The accounts can be organized by folder under the **Settings**

#### Dashboard Navigation

1.  From the left menu, `Select`  **Dashboard**
1.  Use the Table below or this [link (*updated*)](https://docs.ermetic.com/docs/dashboard#dashboard-widgets) for an explanation for the Dashboard

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



####  Learning to Fileter and Search for Data


##### Inventory Search Bar

1.  Use the **search bar** above the dashboard to find resource across your entire multi-cloud environment
1.  `Enter` the text  **ohcnapp**  
1.  `Click` on **IAM Roles**
1.  Note the list of IAM Roles displayed for that *Resource type*

##### Filtering Data

1.  `Click` on **Findings**
1.  You can *filter* the output
   1.  `Click` on **Severity** and `Select` **Critical and High**  
      Note:  **Severity**  is fully explained in this [link](https://docs.ermetic.com/v1/docs/en/navigate-the-console#colorcoded-risk-severity)
   1.  Note this displays all *findings* with the *Severity* level selected.

###### Excluding Findings  (DO NOT EXCLUDE FINDINGS in this LESSSON)

1.  You can also ***exclude** the types of findings
    1.  `Click` on the **Category** filter and `Select` **IAM**
    1.  `Expand` one of the *Policies** (ie *Overprivileged IAM Role)
    1.  `Rollover` the mouse to one of the rows
    1.  `Click` on the 3-dot menu
    1.  DO NOT PERFORM THIS STEP IN THE CLASSROOM EXERCISE
        1.  To exclude, select the **Exclude menu**   


1.  `Click` on the link below to for addidtional modules how to  filter the data throughout in the console to find specific resources, activities, and other types of data.


1.  `Click` on this [link](https://docs.ermetic.com/docs/filter-data#filter-data-in-tables) for additional information on filtering data.

#### Challenge Questions

1  In the Findings tab, name three filters that you could enable to find  find a misconfigured policy named:  *Password reuse policy does not meet minimum requirements*
