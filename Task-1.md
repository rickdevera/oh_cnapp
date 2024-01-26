### Dashboard review

#### Goal: 
Identify controls and navigate around the dashboard.


#### Task Summary
- Understand navigating around the dashboard and widgets
- Understand the search/query/filtering capabilities


#### Prerequisites
##### Credentials
1.  Login credentials with **Viewer** permissions found in **Output Properties**.  
*(Credentials should be found in Output Properties on the left-side of the Challenge Page)* 

Note:  *See Documentation <a href="https://docs.ermetic.com/docs/manage-ermetic-users-and-groups" rel="nofollow"> (link)</a> for more detailed information.*

1.  There are three built-in roles that can be assign to user/group
- Viewer
- Collaborator
- Administrator

1.  Each role provides a different level of access within the Tenable Cloud Security Console.  The table below provides a detailed list of the permissions granted by each role

________
| Component/Action | *Viewer* | Collaborator | Administrator |
|------------------| :----: | :----------: | :-----------: |
|------------------------------------------| -----------|-----------------|-------------------|
| ---------------------| | | | | 
| <b> View Console tabs </b> | | | | |
| ---------------------| | | | | 
| Dashboard | x | x | x|
| Inventory | x | x | x|
| Activity Log | x | x | x|
|Identity and Access Management | x | x | x|
| Compliance | x | x | x |
| IaC | x | x | x |
| Findings | x | x | x |
| Policies | x | x | x |
| Reports | x | x | x | 
| JIT Access | - | - | x |
| -----------------| | | | | 
| <b>Create Reports </b> | | | | |
|------------------| | | | | | 
| Generate Report | x | x | x | 
| Schedule Report | - | x | x |
| Delete Report | - | x | x |
| ---------------------| | | | | 
| <b>Resource Actions </b>| | | | | 
| ---------------------| | | | | 
| Add labels to resources | - | x | x |
| Mark Resources as Sensitive | - | x | x |
| Generate least privilege policies | - | x | x |
| ---------------------| | | | | 
| <b>Respond to Findings</b>| | | | | 
| ---------------------| | | | | 
| Share via email | x | x | x |
| Resolve | - | x | x |
| Snooze | - | x | x |
| Exclude from Policy | - | x | x |
| Automatic Remediation | - | x | x |
| Integration actions 
(For example, create JIRA Issues) | - | x | x |
| Disable policy | - | - | x |
| ---------------------| | | | | 
| <b>Administration </b>| | | | | 
| ---------------------| | | | | 
| Accounts | - | - | x |
| Settings (all tabs and actions) | - | - | x<sup>*</sup> |
| Audit | - | - | x<sup>*</sup>|

__________  
  



#### Task

##### Dashboard Navigation

Having a clear understanding of your cloud posture means you can continuously monitor, validate, and remediate your corporate security policies and best practices.  Quickly identifying vulnerabilities, anomalies, configurations issues are a few of the key features in the Tenable Cloud Security Dashboard.

###### Login to the Tenable Cloud Security Dashboard

1.  `Login` into **https://us.app.ermetic.com**  *** (Instruction for credentials are found in the Prerequites section above) ***
1.  On the **Top-Right**, `select` **All accounts** drop down and `choose` **AWS->Production Labs->awsjams** under the **Organization** hierarchy. 

    <u>***Note:  This must be selected when completing all tasks in this challenge.  If not, there maybe different validation results.*** </u>


When you log into the Console, your Dashboard appears. The Dashboard provides a comprehensive overview of your cloud environment, giving you a snapshot of your asset count and security posture. It’s a great jumping off point for deeper investigation into potentially risky events and circumstances in your environment.  

The Dashboard can be used to:
  - Provide a quick, high-level overview of important activities for corporate executives.
  - Allow security professionals to easily monitor and remediate their security state by drilling down into relevant issues.
The various out-of-the-box widgets in the Dashboard highlight common security concerns such as excessive permissions, public resources, and compliance.

This lab will only focus on a few widgets on the dashboard.
Here is a <a href="https://docs.ermetic.com/docs/dashboard" rel="nofollow">link</a> that shows the dashboard and all the widgets.   

##### IAM Resources

In a recent study of a cloud breach, it was found that the victim did not have complete visiblity of IAM roles, groups, and users.  The victim needed to easily identify and associate assigned permissions, elevated permisions, or activity, 
Visibility and monitoring of IAM resources one of the key steps to securing your cloud deployment.

1.  `Click` on **IAM Resources** to view total resources found by across all cloud platform accounts.  (In this challenge, only one AWS account is being used).

1.  Each resource are links to drill down and view individual resources.  You can use the Inventory view to learn a wide variety of important things about your multi-cloud environment:

    1.  On the dashboard, `Click` on **IAM Resources->IAM users** to drill down and view a list of IAM users.
    1.  `Click` on **ec2connectUser001**
        1.  Discover granular details by walking (`clicking`) through the left menu items. 
        (See this <a href="https://docs.ermetic.com/docs/drill-down-into-resources" rel="nofollow">link</a> for detailed explanation)

    
    1.  `Click` on the *kebab (three-vertical dot)* menu and `select` **Least Privilege Policies**
        1.    This feature is used to generate on-demand, fine-grained policies for AWS identities/resources that grant the minimum privileges needed to perform required tasks. 

        1.  Please note:   This step is <u>ONLY</u> used to walk through this feature, we will not generate policies.  See Generate Least Privilege Policy <a href="https://docs.ermetic.com/docs/generate-least-privilege-policies" rel="nofollow">link</a> for more details on generating a policy

    1.  `Return` to the dashboard.  `Click` on **Compute Resources->EC2 Instances** to show EC2 resources
    1.  `Select` the filters, **Network Exposure Scope->All IPs** and **Vulnerability Severity** and `select` Critical, High***
       (**Note**:  if filter is not displayed, `click` on the **+** button to add additional filters)
        1.  This will show critical EC2 instances with a wide-open public exposure.  
    1.  `Click` the EC2 instance with the string containing the name <u>**aws-cloud9-Jam-IDE**</u>
    1.  `Select` the **Overview** menu tab
        1.  `Search` for **Role**  
        1.  `Click` on the policy assigned to the **Role** (<u>AWSJamsEC2OverprivilegedRole</u>)  
        1.  `Click` on **IAM->Graph** (Note:  may need to refresh and zoom in to read the output)  
            1. This step is use to see the permission mapping that exists for a given resource, and to better understand how the resource, acting as an originator or an identity, is able to assume roles and access other resources in your environment (via permissions granted in policies) (See <a href="https://docs.ermetic.com/docs/visualize-permission-mapping" rel="nofollow">link</a> for more information)
        1.  `Click` on **Serverity->Critical**  
           1.  **Note** the Critical severity impact of this role asssigned to this EC2 Instance.  
  
        1.  Go back and click on **Compute Resources->EC2 instances**.
        1.  Select and display the Overview page for **aws-cloud9-Jam-IDE**   
    1.  `Click` on the **Findings** tab  
      1.  Note the additional policy violations found that are associated with this resource.  
    1.  `Click` on the **Network** menu - note the networking details i.e. **Security Groups and Ports**  
        1.  Note the impact of the Security Groups .
            1.  This is a visual representation of the Security Group rules.
    1.  `Click` on the **Workloads** Menu and `Select` **Vulnerabilities** tab.
    1.  `Select`` the filter <u>Vulnerability Severity is **Critical**</u>
    1.  For the EC2 instance shown in the above steps, review the listing for  **Vulnerabilties Severity is Critical**

 

#### Validation Question 

1.  Enter the name of one (1) vulnerabilities found.  