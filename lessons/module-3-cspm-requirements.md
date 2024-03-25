
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

Acme Corp has recently expanded its cloud infrastructure to utilize services from AWS, Azure, and GCP to enhance scalability and redundancy. However, this multi-cloud strategy has led to complexity in managing security postures and ensuring compliance with various standards. They need a CSPM solution that provides comprehensive visibility and control over their cloud environment.

#### Customer Requirements:

1.  A complete inventory of their cloud assets across AWS, Azure, and GCP.
1.  Detailed visibility into the metadata and relationships of those resources. 
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
1. The ability to automatically mitigate misconfigurations 
1. Compliance checks against industry standards and best practices, including CIS Benchmarks.
1. Evaluation against common compliance standards such as SOC 2, ISO 27001, and PCI-DSS.
1. Consideration of regulatory frameworks like GDPR and LGPD for data protection.
1. Creation and filtering of findings by custom compliance standards set by Acme Corp.
1. Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

#### Steps

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
    1.  From the Dashboard, 

