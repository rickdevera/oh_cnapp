
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

### Scenario:

Customer has recently expanded its cloud infrastructure to utilize services from AWS, Azure, and GCP to enhance scalability and redundancy. However, this multi-cloud strategy has led to complexity in managing security postures and ensuring compliance with various standards. They need a CSPM solution that provides comprehensive visibility and control over their cloud environment.  Below are the customer requirements. <sup>(AI Generated)</sup>

#### Customer Requirements:

##### Discovery

    1. A complete inventory of their cloud assets across AWS, Azure, and GCP.
    1. Detailed visibility into the metadata and relationships of those resources. 
    1. The ability to search and filter across clouds for quick access to specific data points.
    1. A contextual dashboard that categorizes resources by type for better analysis.
    1. Identification of resource ownership to enforce accountability.
    1. Visualization of network exposure to assess external access risks.
    1. Insights into federated identity providers like PingIdentity, Azure AD, Okta for identity and access management.

##### Misconfigurations

    1. A robust mechanism to detect and alert on misconfigurations across various cloud resources.
    1. Step-by-step guidance to remediate identified misconfigurations.
    1. Prioritization of risks based on specific contexts to focus on the most critical issues first.
    1. Monitoring for any publicly exposed or shared resources to prevent unintended data leaks.
    1. Alerts for any unencrypted data stores which could pose a risk of data breaches.
    1. Identification of outdated or insecure network communication channels.
    1. Detection of exposed secrets and a lack of key rotation which could lead to compromised credentials.
    1. Custom policy creation to enforce specific security postures.
    1. Automatic categorization of findings to streamline remediation processes.

##### Compliance

    1. Compliance checks against industry standards and best practices, including CIS Benchmarks.
    1. Creation and filtering of findings by custom compliance standards set by the customer
    1. Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

#### Steps to demo the requirements

1.  A complete inventory of their cloud assets across AWS, Azure, and GCP.
    - The Dashboard can be used to:
        - Provide a quick, high-level overview of important activities for corporate executives.
        - Allow security professionals to easily monitor and remediate their security state by drilling down into relevant issues.

    1.  From the Dashboard,
        1.  `Click` on the top right, the pulldown list for **All Accounts**.   
        1.  `Verify` that all accounts are selected. 
    1.  From the Dashboard,
        1.  `View` the Asset Inventory organized by resource category
        1.  `Click` on each resource category
        1.  `Click` on the resource  type to list of resources found.


    1.  **Validation Question:**
        1.  How would you view the inventory of a specific cloud account?
        1.  How many assets are found under **IAM Roles**?

1.  Detailed visibility into the metadata and relationships of those resources. 
    1.  From the Dashboard, `Click` on **Compute Resources->EC2 Instance**
    1.  `Move` the mouse pointer over to an instance name under the **Name** column.  
        Note the quick popup of the metadata.
        1.  `Click` on the **name* of the EC2 Instance.
        1.  Under the **Overview** tab, the relationships and metadata will be displayed under the **General** heading.
        1.  `Scroll` down and review **Created by**, **Availability Zone**, and **Role** 
    1.  **Validation Question**
        1.  Which IAM role is assigned to the EC2 instance?
        1.  How was this resource created?

1.  The ability to search and filter across clouds for quick access to specific data points.
    1.  From the Dashboard, 'Click' on the **Search Bar** on the top of the dashboard
        1.  `Enter`  the string **EC2** 
        1.  This will search and display across all accounts.  
        *Note*: This displays all accounts configured during the onboard process.  
        1.  `Click` on **EC2 Instances**
    1.  Validation Question:
        1.  How many Lambda functions were found with the name **OHcnapp**?

1.  A contextual dashboard that categorizes resources by type for better analysis.
    1.  Two methods
        1.  Dashboard
            1.  `View` the Dashboard widget
            1.  `View` the Asset Inventory widget which displays all resource categories.
            1.  `Scroll` through the dashboard and validate all catagories found.

        1.  Inventory view    
            1.  `Click` on **Inventory** from the *left menu*


1.  Identification of resource ownership to enforce accountability.
    1.  See Steps above
    1.  
1.  Visualization of network exposure to assess external access risks.
    1.  From the Dashboard, `Select` the tile **Compute Resources->EC2 Instances**
        1.  From the filter bar
            1.  `Select` **Network Exposure->Internet (direct)**
            1.  `Select` **Network Exposure Scope->All IPs**
            1.  `Select` the **EC2** Instance
            1.  `Select` the **Network** menu
            1.  `Study` The graph view

    1.  Validation Question:
        1.  Which EC2 images have **Indirect** access?
        1.  Which resources is providing the **direct** access?

1.  Insights into federated identity providers like PingIdentity, Azure AD, and Okta for identity and access management. (optional if using federated identity)
    1.  In this environment federated access is going through <u>Tenable One</u>.  For this demo lab, console access to Tenable Cloud Security is setup through <u>TenableOne</u>.  with SSO access to Cloud Security using TenableOne.
    1.  Setting up Federated IDP is covered in the Advanced (Elective) Training Module
    1.  To demo this setup an IDP with AWS Identity Access Center

1.  A robust mechanism to detect and alert on misconfigurations across various cloud resources.
    1.  These steps will be instructor lead as settings are not available through users with Collaborator access.  The lab is configured to send alerts by setting up an Automation rule and can also be sent other integration methods such as a SEIM or Webhooks.
    
    1.  If you were searching for activity from a user (demogoat) whose been making unusual to the system.

        1.  `Click` on **Activity Log** from the **Left-Menu**
        1.  `Click` on the *filter* **Identity**
        1.  `Enter` **demogoat* in the search field
        1.  `Click` on the *filter* **Resources**
        1.  `Enter` **cnappgoat-http-bucket** in the *search field*
        1.  `Select` the entry for cnappgoat-http-bucket  
        
        - This will show the activities associated for a resource.  This can also be done by selecting the resources and selecting Activities in the widget.  

    1.  Another method is to automatically recieve notifications, follow the steps below:  
        1.  To setup follow the steps outline in this link [Integrations and Automations](https://docs.ermetic.com/docs/integrations-and-automations)


        1.  From the **Bottom-Left Menu**, `Click` on **Settings**,
        1.  `Select` **Automations->Policies**
        1.  `Click` on the **Let's Start** menu button
        1.  `Enter` the following:  
            - Name:  **High Alerts**
            - Description:  `Notifications of high alerts`
        1.  Under **Scope**,   `Select` the accounts you want the alerts.  *Note*: In this example there will be only one account, but you can send muliple alerts from many accounts.
        1.  `Click` on **Next**
        1.  `Select` **All (Existing and future policies)
        1.  `Select` **High** for minimum severity (any findings High and above will be sent)
        1.  `Skip` Label.   (*Note* Labels are applied to resources and can be used to add additonal context to the resource Additional information in the Administration section of the documenation)
        1.  `Click` on **Next**
        1.  `Enter` your email address.

        When the criteria for the alert is found, you will receive an email.


    1.  Step-by-step guidance to remediate identified misconfigurations.

        1.  From the left pullout menu, `Select` the **Findings** menu item.
        1.  Filter on the following:  
            - Category:  **Network**
            - Severity:  **Critical and High**
        1.  `Double-click` a Finding
        1.  `Click` on the **Remediation** 

        Note the **Remediation Steps**

    1.  Prioritization of risks based on specific contexts to focus on the most critical issues first.

        1.  There are many ways to achieve this:

            1.  <b><u>f you have only 5 minutes:**</u></b>

                1.  From the Dashboard, `Scroll` down to find the **If you only have 5 minutes**  
                - This widget displays allows you you to focus on the most serious issues or if timing is critical, use this list to assess and remediate the highest priority findings in your environment.

            1.  **Customized method (tagging)**

                1.  `Select` **Findings** from left menu
                1.  `Filter` on **Network**
                1.  `Filter` on **Critical and High* severity 
                1.  `Click` on the **>** symbol to expand the categories
                1.  `Click` on the **STAR** icon to the far right and highlight the star for all.

                - this will display only findings tagged with the **star**

            1.  **Labels**
                1.  Must be Administrator to perform this.
                1.  `Click` on **Settings**
                1.  `Click` on **Inventory**
                1.  `Click` on **Tag** and `Create` a **Manual** lable
                1.  `Name` the label **Toxic Combinations**
                
                1.  `Click` on **Dashboard** from the left-menu
                1.  `Scroll` down to view the **Toxic Combination** widget.
                1.  `Click` on one of the **Findings**
                1.  `Click` one of the listed items.
                1.  `Click` on the **vertical ellipses** icon on the far right next to the list of labels.
                1.  `Add` the label to the resource.
                    - this will label all resources associated with the entry.  
                1.  From the **Settings** menu, click on **Automations**
                1.  `Add` a rule with the following
                    - Label **Toxic Combinations** 
                    - Severity: Medium
                    - Email address.
                
            1.  <b><u>Toxic Combinations</u></b>
                1.  `Click` on **Dashboard** from the left-menu
                1.  `Scroll` down to view the **Toxic Combination** widget.
                1.  `Click` on the Findings to drill down



    1.  Monitoring for any publicly exposed or shared resources to prevent unintended data leaks.
        1.  From the left menu, `Click` on **Inventory** widget.
        1.  `Click` on the **Data** category
        1.  `Select` **S3 Buckets**

        1.  Validation Question:
            1.  Which buckets are listed as **Public**?


    1.  Alerts for any unencrypted data stores which could pose a risk of data breaches.
        
        1.  From the **Dashboard**, `Scroll` to the **Findings** widget
        1.  `Click` on the **Secrets** category
        1.  `Expand` to **Drill** down to view the details of the **Policy** violation
        1.  `Click` on a **Policy Violation** and view the details and remediation recommendations.


    1.  Identification of outdated or insecure network communication channels.

        1.  From the **Dashboard**, `Scroll` to the **Findings** widget
        1.  `Click` on the Category filter and select the **Network** category
        1.  `Select` **Policy**
        1.  `Search` for **Unused** in the search box.
        1.  `Select`  **Unused security group**
        1.  `Expand` to **Drill** down to view the details of the **Policy** violation
        1.  `Click` on any entry to view the details and remediation recommendations.
        1.  `Click` on **Findings**
        1.  `Click` on the **Policy** filter and `type` in the filter **Traffic**
    
        1.  Validation Question:  
            1.  Which resource is failed the polcy for *Unencrypted S3 Bucket Traffic*?
    
    1.  Detection of exposed secrets and a lack of key rotation which could lead to compromised credentials.

        1.  From the **Dashboard**, `Scroll` to the **Findings** widget.
        1.  `Click` on the **Data** category
        1.  `Select` **Policy**
        1.  `Search` for **KMS**
        1.  `Click` on **KMS key automatic key rotation is not enableds**
        1.  `Click` on the entry to drill down into the details
        1.  `Click` on the key and review the details.

        1.  Validation Question:
            1.  Other than the remediation steps provided, what can be done to ensure *Automatic key rotation* is enabled?


    1.  Custom policy creation to enforce specific security postures.

        1.  From the left-menu, `Click` on **Policies**
        1.  `Click` on **Add Custom Policy** button on the top right
        1.  `Click` on **AWS** as the cloud provider
        1.  `Click` on **Monitor rule changes in these security groups**
        1.  `Click` on **Next**
        1.  `Enter` a name (ie.  "Monitor rule changes to SG")
        1.  `Select` specific security groups and select **any** Security Group in the list (ie OHcnappPrivateSG)
        1.  `Select` **Done** button.
        1.  `Expand` the **Custom Policy** category

    1.  Automatic categorization of findings to streamline remediation processes

        1.  From the Dashboard, note the Dashboard widgets contain an Organization view and you can click the tiles or categories and drill down into each widget.  

        [Reference:  Dashboard Widgets (online docs)](https://docs.ermetic.com/docs/dashboard#dashboard-widgets)
        1.  From the Left-Menu, `Select` Inventory.
        1.  `Expand` each category to drills down into each subcategory.  
        
        [Reference:  Asset Inventory (online docs)](https://docs.ermetic.com/docs/view-your-asset-inventory)

    1.  Compliance and Reporting Requirements
        1.  Compliance checks against industry standards and best practices (ie AWS Well Architected, NIST 800-171, etc).

            1.  From the Dashboard, `Scroll` down to view the **Compliance** widget.  
                1.  `Select` from the list, **Last 7 days** to view the compliance score from the last 7-days.
                1.  `Select` **Compliance** from the left-menu.
                1.  `Expand` **Tenable Best Practices**.
                1.  `Expand` to drill down and uncover passed/failed policies.  

        1. Creation and filtering of findings by custom compliance standards set by the company.      
        - These steps will create custom compliane reports.  Be sure the names are unique.

            1.  From the left-menu, `Select` **Compliance**
                1.  `Click` on the **+** (plus) icon on the top right side of the dashboard.
                1.  `Enter` a unique name (ie.  **Ambassador-<username>** 
                1.  `Click` on **Select specific policies**
                1.  `Expand` the **IAM** category
                1.  `Select` **Filter->Severity**
                1.  `Click` on **Critical** and **High**
                1.  `Select` all policy options
                1.  `Click` on **Done** to save the configuration
                1.  After a few seconds, the custom compliance standard will be display.  
                1.  `Expand` the new compliance report to view scores on each policy.


        1. Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

            1.  From the left-menu, `Select` **Reports**
                1.  `Click` on the **New Reports** button (top-right)
                1.  `Select` the **Compliance** Report  from the pull-down list.
                1.  `Select` **Tenable Best Practices** as the Compliance type from teh pull-down list.
                1.  `Choose` **PDF** or **CSV**
                1.  `Select` **Schedule**
                1.  `Enter` the **Delivery times**
                    1.  For example:  **Daily** at **12:00 AM** UTC
                1.  `Enter` and email address
                1.  `Click` on **Schedule**

        1.   Validation Question
            1.  Using the **Tenable Best Practices** *compliance reports*, how many resources violate the policies for **Traffic Encryption**?
                
            





