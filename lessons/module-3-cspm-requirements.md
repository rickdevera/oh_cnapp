
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
- Detailed visibility into the metadata and relationships of those resources. link [1]
 - The ability to search and filter across clouds for quick access to specific data points.
- A contextual dashboard that categorizes resources by type for better analysis.
- Identification of resource ownership to enforce accountability.
- Visualization of network exposure to assess external access risks.
- Insights into federated identity providers like Azure AD and Okta for identity and access management.
- A robust mechanism to detect and alert on misconfigurations across various cloud resources.
- Step-by-step guidance to remediate identified misconfigurations.
- Prioritization of risks based on specific contexts to focus on the most critical issues first.
- Monitoring for any publicly exposed or shared resources to prevent unintended data leaks.
- Alerts for any unencrypted data stores which could pose a risk of data breaches.
- Identification of outdated or insecure network communication channels.
- Detection of exposed secrets and a lack of key rotation which could lead to compromised credentials.
- Custom policy creation to enforce specific security postures.
- Special attention to misconfigurations in identity providers.
- Automatic categorization of findings to streamline remediation processes.
- The ability to automatically mitigate misconfigurations 
- Compliance checks against industry standards and best practices, including CIS Benchmarks.
- Evaluation against common compliance standards such as SOC 2, ISO 27001, and PCI-DSS.
- Consideration of regulatory frameworks like GDPR and LGPD for data protection.
- Creation and filtering of findings by custom compliance standards set by Acme Corp.
- Availability of built-in reports in formats like CSV and PDF, as well as custom and scheduled reporting capabilities.

#### Steps

1.  A complete inventory of their cloud assets across AWS, Azure, and GCP.
    1.  From the Dashboard, `Click` on **IAM Resources** in one of the widges.  The display should look similiar to this
    <img src=../images/multi-account-inventory.png>
    Note:  This aslso 

2.  [1]: Detailed visibility into the metadata and relationships of those resources. 
    1.  From the Dashboard, `Click` on **Compute Resources->EC2 Instance**
    1.  `Move` the mouse pointer over to an instance name under the **Name** column.  
        Note the quick popup of the metadata.
        1.  `Click` on the **name* of the EC2 Instance.
        1.  Under the **Overview** tab, the relationships and metadata will be displayed under the **General** heading.
        1.  `Scroll` down and review **Created by**, **Availability Zone**, and **Role**.
        This will meet requirements that are needed for 

3.  The ability to search and filter across clouds for quick access to specific data points.
    1.  From the Dashboard, 'Click' on the **Search Bar** on the top of the dashboard
        1.  `Enter`  the string **EC2** 
        1.  This will search and display across all accounts.  
        *Note*: This displayes all accounts configured during the onboard process.  
4.  A contextual dashboard that categorizes resources by type for better analysis.
    1.  `Select`  **Dashboard** left menu item
    1.  `Scroll` through the dashboard and validate all catagories found.
5.  Identification of resource ownership to enforce accountability.
    1.  From the Dashboard, 

