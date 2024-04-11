
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

Let's create an example scenario for a sales team where their customer is looking for a Cloud Infrastructure Entitlement Management (CIEM) solution that meets several specific requirements on their AWS platform:

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

1. **Risk Assessment and Prioritization**: Conduct a risk assessment of cloud identities, prioritizing remediation efforts based on the contextual risk associated with each identity.
Contextual Risk Prioritization for Identities: The CIEM solution should evaluate and prioritize identity risks based on their access rights and activities.  

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
    1

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

1. **Least-Privilege Analysis**: Analyze permissions to identify excessive access rights. Use Tenable Cloud Security’s analytics to pinpoint areas where the principle of least privilege can be better enforced.

    1.  From the left menu, `Select`  **IAM->Dashboard**
    1.  In the *Principals* section `Click` on the *Pie chart* for *Overpriviledhart for 

##### Remediation

1. **Recommendations and Remediation**: Generate least-privilege recommendations for all integrated cloud environments. Utilize Tenable Cloud Security’s IaC templates for quick remediation and implement automatic remediation for identities with excessive access.

##### Alerting and Continuous Monitoring

1. **Continuous Monitoring and Compliance**: Set up continuous monitoring and alerts for any changes in permissions or new risks identified. Regularly review and update permissions in line with Tenable Cloud Security’s recommendations to ensure ongoing compliance with best practices.

B