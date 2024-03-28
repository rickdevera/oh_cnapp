
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

Acme Corp has recently expanded its cloud infrastructure to utilize services from AWS, Azure, and GCP to enhance scalability and redundancy. However, this multi-cloud strategy has led to complexity in managing security postures and ensuring compliance with various standards. They need a CSPM solution that provides comprehensive visibility and control over their cloud environment.  Below are the customer requirements. <sup>(AI Generated)</sup>

#### Customer Requirements:

1. A complete inventory of their cloud assets across AWS, Azure, and GCP.
1. Detailed visibility into the metadata and relationships of those resources. 
1. The ability to search and filter across clouds for quick access to specific data points.
1. A contextual dashboard that categorizes resources by type for better analysis.
1. Identification of resource ownership to enforce accountability.
1. Visualization of network exposure to assess external access risks.
1. Insights into federated identity providers like Azure AD and Okta for identity and access management.
1. A robust mechanism to detect and alert on misconfigurations across various cloud resources.
1. Step-by-step guidance to remediate identified misconfigurations.
1. Prioritization of risks based on specific contexts to focus on the most critical issues first.
1. Monitoring for any publicly exposed or shared resources to prevent unintended data leaks.
1. Alerts for any unencrypted data stores which could pose a risk of data breaches.
1. Identification of outdated or insecure network communication channels.
1. Detection of exposed secrets and a lack of key rotation which could lead to compromised credentials.
1. Custom policy creation to enforce specific security postures.
1. Special attention to misconfigurations in identity providers.
1. Automatic categorization of findings to streamline remediation processes.
1. Compliance checks against industry standards and best practices, including CIS Benchmarks.
1. Creation and filtering of findings by custom compliance standards set by Acme Corp.
1. Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

#### Steps to meet the requirements

1.  A complete inventory of their cloud assets across AWS, Azure, and GCP.
    1.  From the Dashboard, `Click` on **IAM Resources** in one of the widges.  The display should look similiar to this
    <img src=../images/multi-account-inventory.png>
    [!Note]:  This also meets the requirement for a contextual dashboard that categorizes resources by type...

1.  Detailed visibility into the metadata and relationships of those resources. 
    1.  From the Dashboard, `Click` on **Compute Resources->EC2 Instance**
    1.  `Move` the mouse pointer over to an instance name under the **Name** column.  
        Note the quick popup of the metadata.
        1.  `Click` on the **name* of the EC2 Instance.
        1.  Under the **Overview** tab, the relationships and metadata will be displayed under the **General** heading.
        1.  `Scroll` down and review **Created by**, **Availability Zone**, and **Role** 

1.  The ability to search and filter across clouds for quick access to specific data points.
    1.  From the Dashboard, 'Click' on the **Search Bar** on the top of the dashboard
        1.  `Enter`  the string **EC2** 
        1.  This will search and display across all accounts.  
        *Note*: This displayes all accounts configured during the onboard process.  
1.  A contextual dashboard that categorizes resources by type for better analysis.
    1.  `Select`  **Dashboard** left menu item
    1.  `Scroll` through the dashboard and validate all catagories found.
1.  Identification of resource ownership to enforce accountability.
    1.  See Steps above
1.  Visualization of network exposure to assess external access risks.
    1.  From the Dashboard, `Select` the tile **Compute Resources->EC2 Instances**
        1.  From the filter bar
            1.  `Select` **Network Exposure->Internet (direct)**
            1.  `Select` **Network Exposure Scope->All IPs**
            1.  `Select` the **EC2** Instance
            1.  `Select` the **Network** menu
            [!Note] The graph view
1.  Insights into federated identity providers like Azure AD and Okta for identity and access management. (optional if using federated identity)
    1.  From the Left Menu, `Select` **IAM->Federated Identity Permissions**  

1.  A robust mechanism to detect and alert on misconfigurations across various cloud resources.
    Tenable Cloud Security brings together large volumes of activity data from multiple sources, making it easy to monitor and audit cloud activity based on this data.  
  
    Tenable then uses this data to simplify in-depth cloud detection and response (CDR) by monitoring and reporting on suspicious or unusual activity across your entire multi-cloud environment. By creating a behavioral baseline for each identity captured across cloud provider log trails, the platform detects and turns anomalous findings into contextualized, risk-prioritized alerts that allow you to detect and respond to anomalies.  

    Leveraging advanced analytics and granular visibility on access, entitlement, and infrastructure configuration changes, Tenable simplifies incident response and investigation. Upon identifying unusual identity behavior, Tenable flags it and identifies the root cause.
    
    1.  If you were searching for activity from a user (demogoat) whose been making unusual to the system.

        1.  `Click` on **Activity Log** from the **Left-Menu**
        1.  `Click` on the *filter* **Identify**
        1.  `Enter` **demogoat* in the search field
        1.  `Click` on the *filter* **Resources**
        1.  `Enter` **cnappgoat-http-bucket** in the *search field*
        1.  `Select` the entry for cnappgoat-http-bucket  
        
        This will show the activities associated for a resource.  This can also be done by selecting the resources and selecting Activities in the widget.

    1.  Another method is to automatically recieve notifications, follow the steps below:

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

            1.  If you have only 5 minutes:

                1.  From the Dashboard, `Scroll` down to find the **If you only have 5 minutes**  
                - This widget displays allows you you to focus on the most serious issues or if timing is critical, use this list to assess and remediate the highest priority findings in your environment.

            1.  Customized method (tagging)

                1.  `Select` **Findings** from left menu
                1.  `Filter` on **Network**
                1.  `Filter` on **Critical and High* severity 
                1.  `Click` on the **>** symbol to expand the categories
                1.  `Click` on the **STAR** icon to the far right and highlight the star for all.

                - this will display only findings tagged with the **star**


    1.  Monitoring for any publicly exposed or shared resources to prevent unintended data leaks.
        1.  From the **Dashboard**, `Scroll` to the **Findings** widget.
        1.  `Click` on the **Data** category
        1.  `Expand` each entry to view the details of the **Policy** violation
        1.  `Click` on a **Policy Violation** and view the details and remediation recommendations.

    1.  Alerts for any unencrypted data stores which could pose a risk of data breaches.
        
        1.  From the **Dashboard**, `Scroll` to the **Findings** widget
        1.  `Click` on the **Secrets** category
        1.  `Expand` to **Drill** down to view the details of the **Policy** violation
        1.  `Click` on a **Policy Violation** and view the details and remediation recommendations.


    1.  Identification of outdated or insecure network communication channels.

        1.  From the **Dashboard**, `Scroll` to the **Findings** widget
        1.  `Click` on the **Network** category
        1.  `Select` **Policy**
        1.  `Search` for **Unused** in the search box.
        1.  `Select`  **Unused security group**
        1.  `Expand` to **Drill** down to view the details of the **Policy** violation
        1.  `Click` on any entry to view the details and remediation recommendations.
    
    1.  Detection of exposed secrets and a lack of key rotation which could lead to compromised credentials.

        1.  From the **Dashboard**, `Scroll` to the **Findings** widget.
        1.  `Click` on the **Data** category
        1.  `Select` **Policy**
        1.  `Search` for **rotation**
        1.  `Click` on **Select matches**
        1.  `Expand` each entry to drill down into the details 

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

    1.  Special attention to misconfigurations in identity providers.

    1.  Automatic categorization of findings to streamline remediation processes

        1.  From the Dashboard, note the Dashboard widgets contain an Organization view and you can click the tiles or categories and drill down into each widget.  

        [Reference:  Dashboard Widgets (online docs)](https://docs.ermetic.com/docs/dashboard#dashboard-widgets)
        1.  From the Left-Menu, `Select` Inventory.
        1.  `Expand` each category to drills down into each subcategory.  
        
        [Reference:  Asset Inventory (online docs)](https://docs.ermetic.com/docs/view-your-asset-inventory)

    1.  Compliance and Reporting Requirements
        1.  Compliance checks against industry standards and best practices, including CIS Benchmarks.


        1. Creation and filtering of findings by custom compliance standards set by the company.

        1. Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

            ###### Steps

            1.  From the Dashboard, `Scroll` down to view the **Compliance** widget.  
                1.  `Select` from the list, **Last 7 days** to view the compliance score from the last 7-days.
                1.  `Select` **Compliance** from the left-menu.
                1.  `Expand` **CIS CCM 4.0.2**.
                1.  `Select` and `Expand` a category to view the policies and the failed resources.
            1.  From the left-menu, `Click` on **Findings**
                1.  `View` the filter bar and verify if **Compliances** is one of the avaliable filter options.
                    1.  If not, `Click` on the **+** symbol and `Select` **Compliances**
                1.  `Select` **Compliances** and `Choose` **CSA CCM 4.0.2**
                1.  `Select` the download symbol on the top right side *(indicated by down arror and underscore)*
                1.  `Choose` **Export** and save to local directory.
            1.  From the left-menu, `Select` **Reports**
                1.  `Click` on the **New Reports** button (top-right)
                1.  `Select` the **Compliance Report**  from the pull-down list.
                1.  `Select` **CIS CCM 4.0.2** as the Compliance type from teh pull-down list.
                1.  `Choose` **PDF** or **CSV**
                1.  `Select` **Schedule**
                1.  `Enter` the **Delivery times**
                    1.  For example:  **Daily** at **12:00 AM** UTC
                1.  `Enter` and emial address
                1.  `Click` on **Schedule**
                Your report is now schedule.

#### Review Questions

1.  Start Kahoot




