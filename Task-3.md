## More Findings
###  Compliance Reports and Hard to Spot Threats
#### Goal

Use Tenable Cloud Security to discover mulitple ways to uncover misconfigurations and vulnerabilities.
* Use the compliance reports to quickly uncover open *Findings*
* Use the dashboard to uncover hard-to-spot **Toxic Combinations**.

#### Prerequisites
1.  On the **Top-Right**, `select` **All accounts** drop down and `choose` **AWS->Production Labs->awsjams** under the **Organization** hierarchy. 


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

1.  On the dashboard, go to the **left-menu** 
1.  `Select` the **Compliance** icon/menu item (*checkbox*).
1.  `Expand` **AWS Well Architected->Security** 
1.  `Expand` **SEC 6 - How do you protect your compute resources?**
1.  `Click` on **EC2 instance metadata service support insecure version**
1.  `Expand` the **Compute** category
1.  Under the **Policy** heading, `Click` on **EC2 instance metadata service supports insecure version**.
1.  Note the explantion of this type of attack.  This was a <u>well-known attack</u> reported by a financial institution.
1.  `Click` on the link, under the **Result** heading (For example:  <u>27 of 34 resources failed | 27 open findings</u>). 
1.  Note the listing of all resources impacted by this policy which can be filtered by Accounts, Category, and/or Severity level.

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


##### Custom Compliance Rules

You can also create custom out-of-the-box **Compliance rules** to monitor a specific set of policies that align with your organization’s goals. 
For example:
- Monitor organization-specific compliance rules
- Track organizational projects that address a specific set of issues
- Track hard-to-find *toxic combinations*.


1.  On the **Compliance** dashboard, `search` for **AWSJams Custom Policy**
1.  `Expand` the compliance policy
1.  Note the policies assigned to the custom organization policy.
1.  This is another way to display findings for **EC2 instance has critical vulnerabilities**

##### If you only have 5 minutes
Resources and expertise is always a challenge for security organizations.  Tenable Cloud Security provides additional insights to help security teams uncover areas of high risk and provides widgets on the dashboard to <u>quickly</u> spot and monitor areas of risk.   

For example:  On the main dashboard you can view **If you only have 5 minutes**. 

1.  On the Dashboard, find the section **If you only have 5 minutes**
    1.  If you’re short on time, or just want to focus on the most serious issues, use this list to assess and remediate the highest priority findings in your environment.  
    1.  This is another way to discover vulnerable compute instances. 
    1.  You drill down deeper on resolving the issues by `Clicking`` on a finding or its associated resource to review the  suggested **Remediations**.


1.  There are many ways to quickly discover misconfigurations.  
1.  There is also another widget quickly uncovers hard-to-spot, combination of misconfigured and vulnerable resources.


##### Validation Question

1.  On the main dashboard, `enter` the <u>name</u> of the widget that displays the resources with multiple risks that, when combined, are both hard-to-spot 
and pose a greater threat to your organization.

