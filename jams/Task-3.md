## More Findings
###  Compliance Reports and Hard to Spot Threats
#### Goal

Use Tenable Cloud Security to discover mulitple ways to uncover misconfigurations and vulnerabilities.
* Use the compliance reports to quickly uncover open *Findings*
* Use the dashboard to uncover hard-to-spot **Toxic Combinations**.

#### Prerequisites
1.  On the **Top-Right**, `select` **All Accounts**.
1.  `Select` the **ambassador-ou** accounts.


#### Task Summary

Ensure compliance with industry standards to meet legal, regulatory, and business requirements, and to implement security best practices that protect against evolving threats. Translate abstract compliance goals into concrete action items within your cloud environment.

Use Tenable Cloud Security to:

- Continuously monitor cloud compliance posture for standards such as CIS, AWS Well Architected, GDPR, HIPAA, ISO, NIST, PCI, SOC2, and NYDFS 23 NYCRR 500.
- Understand which Tenable Cloud Security policies map to each control defined by the standard, and which configurations need to be enforced to achieve compliance.
- Create reports to share progress with executive leadership and communicate with relevant stakeholders on internal compliance, external audit, and general security activities.
- Create your own custom standards to monitor compliance with a specific set of policies that align with your organization’s goals.  

#### Task

Tenable Cloud Security reviews and interprets a wide range of compliance standards, which often vary greatly in terms of the degree of specificity of their requirements. Tenable then maps individual standard requirements to any relevant Tenable policies.

For the standard as a whole and for any high-level requirements, the percentage is calculated by averaging the percentages of all requirements related to the standard/high-level requirement.
For individual requirements, the percentage is calculated in a weighted manner, factoring in the number of resources that are assessed by each policy related to the requirement.
Note some standards are not displayed and cannot be selected due to the assigned role (***Viewer***) to the user.


##### AWS Well-Architected Standard

- Use Case - Customer task is identify areas that meet the requiements for an AWS Well-Architected Review.

1.  On the dashboard, go to the **left-menu** 
1.  `Select` the **Compliance** icon/menu item (*checkbox*).
1.  `Expand` **AWS Well Architected->Security** 
1.  `Expand` **SEC 6 - How do you protect your compute resources?**
1.  `Click` on **EC2 instance metadata service support insecure version**
1.  In this case there were **XX** out of **XX** resources that were scanned and *failed*.


You can also use the compliance reports to drill down into public EC2 instances with *Critical Vulnerabilties*

1.  1.  On the dashboard, go to the **left-menu** 
1.  `Select` the **Compliance** icon/menu item (*checkbox*).
1.  `Expand` **AWS Well Architected->Security** 
1.  `Expand` **SEC 6 - How do you protect your compute resources?**
1.  `Click` on **EC2 Instance has critical vulnerabilities**
1.  `Expand` **Workload Protection**
1.  `Select` the ***link*** under the heading **Results** (<u>For example:  10 of 25 resources failed | 10 open findings</u>)
1.  `Filter` **Severity** is **Critical**
1.  Note the results

#### IAM

In a well-known case study of a financial institution, it was found that an EC2 instance was assigned  privileged access using an **assumed** IAM role.  In a large cloud deployment, the task for finding specific details for IAM is very cumbersome.  Below are some of the way do uncover the details across the entire AWS organization or an AWS account.

1.  Using **IAM->Intelligence**, filter for the following:
    1.  Orginators:  **AWS Lambda**
    1.  Permission Severity:  **Critical**

1.  Using **Permissions Query**, `filter` for the following:
    1.  Originators:  **AWS Lambda**
    1.  Permission:  **sts:AssumeRole**  (Hint: *enter the string in search bar*)
1.  `Click` on the role found
1.  `Click` on the **IAM->Trust Relationship Policy** tab
1.  Note the allowed services and the *Action* is an **sts:AssumeRole**


##### Validation Question


1.  Search and Enter the name of a *role* that has a *permission severity* of  **critical**, that can **assume** and identity of an **Amazon EC2 instance**, and it Linked to a compute resource that is *labeled* **vulnerable**.


