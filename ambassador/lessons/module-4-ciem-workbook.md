
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

### Use Case

#### Customer Scenario

A multinational corporation operates a complex cloud infrastructure across multiple cloud platforms (AWS, Azure, and GCP). The company's IT security team struggles with the following:

1.  Understanding effective permissions across various accounts and federated identities.
1.  Identifying and addressing misconfigured identities, third-party access, and excessive permissions.
1.  Implementing a strategy for least privilege and automatic remediation.
1.  To address these challenges, the company evaluates a Cloud Identity and Entitlements Management (CIEM) solution to improve visibility, governance, and least-privilege practices. The following is a use case scenario focusing on AWS, meeting the specified requirements.

#### Customer Need

1.  The customer is concerned about the following:

    1.  Unauthorized access to AWS resources due to unclear or misconfigured permissions.
    1.  Risk arising from excessive permissions granted to identities.
    1.  Time-consuming manual processes for identifying and correcting misconfigurations.

1.  To meet these needs, the customer seeks a CIEM solution to:
    1.  Gain detailed visibility into effective permissions, ensuring that identity management and access policies are aligned with security best practices.
    1.   Implement risk-based identity governance to highlight critical security issues and automate least-privilege remediation.

### Requirements and CIEM Features
1. **Effective Permissions**
   - **Visibility into Effective Permissions in AWS:** The CIEM solution must provide insights into permissions granted by IAM policies, conditions, resource policies, permission boundaries (PB), and service control policies (SCPs).
   - **Visualization and Analysis:** The solution should enable visualizing effective permissions from identity and resource perspectives, with querying capabilities for deeper analysis.
   
1. **Identity Governance**
   - **Risk-based Visibility into Identities:** The CIEM solution must prioritize identities based on risk, highlighting those with excessive permissions or that are otherwise misconfigured (e.g., inactive, static keys, or lacking MFA).
   - **Visibility into 3rd Party Access:** The solution should reveal access by third-party entities to identify potential risks.
   
1. **Least Privilege**
   - **Excessive Permissions Analysis:** The CIEM solution should identify and recommend remediation for identities with excessive permissions, based on cloud activity logs and API analysis.
   - **Least-Privilege Recommendations for AWS:** Generate tailored recommendations for reducing permissions to the least required level.
   
1. **Remediation**
   - **IaC Templates for Remediation:** The CIEM solution should support Terraform and CloudFormation templates to automate remediation.
   - **Automatic Remediation:** The CIEM solution should offer automatic remediation options for identities with excessive access.
____   
### Steps to Demonstrate by customer requirements 

This module is a guide to demonstrate these requirements using Tenable Cloud Security:

1. **Visibility into Effective Permissions:**
    - Use Tenable Cloud Security to view effective permissions for federated identities and other AWS accounts. Examine IAM policies, SCPs, and resource policies.
    - Visualize effective permissions from identity and resource perspectives to understand the overall permission structure.

    1.  An extensive reference can be found *[here](https://docs.ermetic.com/docs/identity-intelligence#identity-column-data)*, but we will go through a few of the steps to demo.
        1.  `Click` on the **IAM** menu item from the left-menu
        1.  `Select` **Identity Intellligence**
        1.  `Mouse-over` each of the icons under the **Permission Category Column** <sup>[Reference](https://docs.ermetic.com/docs/permission-analysis-and-risk-levels)</sup>
            - this will provide with a mapping of identity activity categories, and a color-coded risk severity level.
        1.  `Click` on the number under **Findings**, this will provide the number of findings associated with the identity. Click on the number to view a searchable list of the findings.
        1.  On the far right of each row, `Click` on the **veritical ellipse** to view more information about the identity (ie.  Generate least privileged policies)

    1.  Validation Question:
        1.  What is the resource name that includes permission category of **Data** and user **AWS Lambda** services?
        1.  What was the name of the matched(violated) policy?



1. **Identity Governance and Risk Analysis:**
   - Analyze identity configurations to identify misconfigurations (e.g., inactive accounts, static keys, lack of MFA).
   - Use Tenable Cloud Security's risk-based visibility to prioritize identities that require immediate attention.

    1.  Finding lack of MFA use
        1.  `Click` on **Inventory**, from the left menu
        1.  `Select` **IAM Users**
        1.  Note the **MFA** column

    1.  Find inactive accounts
        1.  `Click` on **IAM->Dashboard** from the left menu
        1.  Note the graph for inactive accounts for both user accounts  and service accounts.

    1.  Immediate action based on severity level.
        1.  `Click` on **Findings** from the left menu
        1.  `Filter` on the **IAM** Category and **Critical** and **High** Severity level

    1.  Validation Question
        1.  Find the name(s) of the **Critical** severity resource with the **Resource Owner** of ohhcnapp@gmail.com


1. **Least Privilege Analysis and Recommendations:**
   - Generate least-privilege recommendations for AWS based on excessive permissions identified by Tenable Cloud Security.
   - Analyze cloud activity logs to determine if any identities are granted more permissions than necessary.

   1.  `Click` on 

1. **Remediation:**
   - Create IaC templates (Terraform or CloudFormation) to automatically remediate excessive permissions in AWS.
   - Enable automatic remediation for identities with excessive access, allowing Tenable Cloud Security to enforce least-privilege configurations. 





With these steps, you can demonstrate how Tenable Cloud Security can meet the requirements for effective permissions, identity governance, least privilege, and remediation in a complex AWS environment.
---


### Use Case Scenario: RCD Systems' CIEM Solution with Tenable Cloud Security

#### Background
RCD Systems is expanding rapidly, integrating more services and applications into its cloud infrastructure. With this expansion, managing and securing cloud identities and their permissions has become increasingly complex. The company needs a CIEM solution that provides comprehensive visibility and control over cloud identities and their entitlements across AWS, Azure, and GCP platforms to maintain a robust security posture. <sup>AI generated</sup>

#### Customer Requirements 

##### Effective Permissions

1. **Visibility into Effective Permissions**:  The CIEM solution must offer detailed insights into IAM Policies, Conditions, Resource Policies, Permission Boundaries (PB), and Service Control Policies (SCPs) within AWS to understand the effective permissions of identities.


##### Identity Governance

1. **Contextual Risk Prioritization for Identities**: The CIEM solution should evaluate and prioritize identity risks based on their access rights and activities.

1. **Visibility into 3rd Party Access**: Monitoring and managing third-party access to RCD Systems’s cloud environments is crucial for preventing unauthorized access.

1. **Visibility into Misconfigured Identities**: Identifying identities with potential risks, such as inactivity, use of static keys, or lack of MFA, is vital for maintaining security hygiene.

##### Least-Privilege Access

1. **Analyze Excessive Permissions**: The solution should analyze permissions based on cloud provider APIs and activity logs to identify and highlight excessive permissions.

1. **Visualize and Remediate Excessive Permissions**: It should offer visualization tools for excessive permissions and generate recommendations for achieving least-privilege access.

##### Remediation

1. **Least-Privilege Recommendations and IaC Templates**: Generate actionable recommendations for quick remediation.

1. **Automatic Remediation**: For identities identified with excessive access, the solution should offer capabilities for automatic remediation.

##### Alerting and Continous Monitoring

1.  System must provide monitoring and alerts of updates and changes to identity permissions.

______

#### Demo Steps

1. **Setup and Configuration**: Begin by setting up Tenable Cloud Security in RCD Systems’s cloud environment. Integrate with AWS, Azure, and GCP to ensure comprehensive coverage.

##### Meeting requirements for Effective Permissions

1. **Demonstrate Effective Permissions**: Utilize Tenable Cloud Security to scan and visualize effective permissions across cloud identities, assessing federated, AWS, Azure, and GCP identities for compliance with the principle of least privilege.

    1.  From the left-menu on the Tenable Cloud Security Dashboard
        1.  `Click` on **IAM->Identity Intelligence**
        1.  `Click` on **Permission Severity** and filter on **Critical and High**  
            - Note under the **Services** and **Resources** this will show the number of services and resources that identity has access to.  
        `Click` [Identity Column Table](https://docs.ermetic.com/docs/identity-intelligence#identity-column-data) for additional information.
        1.  `Click` on **IAM->Permission Query**

            - This will perform flexible and granular queries across all cloud identities to quickly surface problems of interest related to granted permissions. 
            - Use case examples:
                - Identities in a non-production account that have permissions in a production account, with an unrestricted resource scope.
                - Storage buckets that a specific identity has permissions to delete objects on.
                - Identity users that have Data Access permissions to a specific resource ID


##### Identity Governance

1. **Risk Assessment and Prioritization**: 
    - Conduct a risk assessment of cloud identities, prioritizing remediation efforts based on the contextual risk associated with each identity.
    - Contextual Risk Prioritization for Identities: The CIEM solution should evaluate and prioritize identity risks based on their access rights and activities.  

    1.  To conduct a risk assessment
        1.  Discovery and Identify Cloud resources and entitlements
        1.  Assess/Analyze permissions, identify misconfigurations
        1.  Prioritize the risk
        1.  Remediate

    1.  Discovery
        1.  From the left-menu, `Select` **IAM->Dashboard**
        1.  View the different trends, graphs, charts, and `Click` on the items to drill-down

    1.  Assess/analyze permissions
        `Click` on **IAM->Permissions Query**


1. **Visibility into 3rd Party Access**: Monitoring and managing third-party access to CloudTech’s cloud environments is crucial for preventing unauthorized access.

    1.  `Click` on **Inventory**
    1.  `Click` on **IAM->IAM Roles**
    1.  `Click` the **3rd Party** filter to view cross account access.

1. **Visibility into Misconfigured Identities**: Identifying identities with potential risks, such as inactivity, use of static keys, or lack of MFA, is vital for maintaining security hygiene.
    1.  From the left-menu, `Click` on **IAM->Identity Intelligence**
    1.  `Select` **Labels**
    1.  `Select` **No MFA**
    1.  `View` the results of all IAM users/roles that have no MFA's configured.  This does not follow best practices.
    1.  `Click` on the **Resource** Name
    1.  `Click` on the **Credentials** menu tab
    1.  `View` output for more details.


##### Least Privileged Access

1. Analyze permissions to identify excessive access rights. 

    1.  From the left menu, `Select`  **IAM->Excessive* Permissions**
    1.  `Click` on the icon for **Overprivilged** service identities.
    1.  `Click` on the resources to drill down to the details.

      
##### Remediation

1. **Recommendations and Remediation**: 

    1.  Generate least-privilege recommendations for all integrated cloud environments. 

    1.  `Select` the link for **All Accounts** on the top right side of the dashboard
    1.  `Verify` that *only* the **ambassador-ro** account is slected
    1.  `Click` on **IAM->Excessive Permissions** from the left manu.
    1.  `Click` on the icon for **Overprivilged** user identities
    1.  `Search` on the a users name (ie OHcnappUser001)
    1.  `Click` on the **veritcal ellipse** on the top right of the dashboard.
    1.  `Select` **Generate Least Priviledge policy**
    1.  `Select` the time since created.
    1.  View the new policy that was generated.



    1.  Utilize Tenable Cloud Security’s IaC templates for quick remediation and implement automatic remediation for identities with excessive access.

    1.  `Click` on **IAC** from the left menu
    1.  `Click` on the *failed** scan
    1.  `Click` on in the row were IaC misconfiguratoins were found.
    1.  `Review` the policy that was created.



##### Alerting and Continuous Monitoring

1.  Set up continuous monitoring and alerts for any changes in permissions or new risks identified. Regularly review and update permissions in line with Tenable Cloud Security’s recommendations to ensure ongoing compliance with best practices.

    1.  `Click` on **Compliance** on the left-menu
    1.  `Review` and `Interpret` the *ratings* for each compliance reports found.

    1.  Validation question
        1.  Which compliances give a score 70% and above.