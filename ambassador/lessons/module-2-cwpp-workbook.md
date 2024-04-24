### Scenario: 

#### Background:

The customer is a rapidly growing  startup that leverages a multi-cloud strategy across Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP) to support its diverse range of financial services. The startup has a dynamic deployment environment with numerous containerized applications running across these cloud platforms. Their DevOps teams use GitHub Actions for CI/CD workflows and containerization with Docker for application deployment. Despite their growth, the startup has encountered challenges in maintaining a robust security posture, specifically in identifying and mitigating vulnerabilities across their cloud workloads and containerized applications.

#### Customer Requirements:

- **Agentless Scanning**: The startup seeks a solution that can perform agentless scanning of their AWS, Azure, and GCP workloads to avoid the overhead of managing agents on each virtual machine or container.
- **Automatic Discovery**: They require automatic discovery of container images running on cloud workloads to ensure all assets are accounted for and analyzed.
- **Software Asset Inventory**: A detailed inventory of the software assets (libraries, packages, OS) for both cloud workloads and container images is crucial for understanding their attack surface.
- **Vulnerability Identification and Remediation**: The customer needs to identify vulnerabilities in both cloud workloads and containers, with clear remediation guidance for any issues found.
- **End-of-Life and Unpatched OS Detection**: Identifying end-of-life or unpatched operating systems in their cloud environment and containers is essential for compliance and security hygiene.
- **Integration with CI/CD and Container Registries**: The solution must integrate with their existing GitHub Actions CI/CD pipelines for scanning container images during the build process and support scanning container registries like ECR (AWS), ACR (Azure), and GAR (GCP).

#### Demo Steps

##### Discovery

###### Agentless Scanning

1.  Detailed Explanation of Agentless scanning can be found here:  
    - [How Tenable Scans Your Workloads](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads)  
    - [Scanning Workflow Diagrams](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads#scanning-workflow-diagrams)

###### Automatic Discovery

These steps will demonstrate automatic asset discovery by creating a new resource in AWS.  We will start a Cloud9 instance, record the IP, and validate the new resource by searching the IP.  This may take a few minutes.  


1.  From the <u>AWS console</u>,
1.  `Record` the time.
1.  Use the followign steps to create an **AWS Cloud9** environment
    1.  Name:  `Enter` a unique name (ie **mycloud9-<lastname>**
    1.  Description:  testing automatic discovery
    1.  `Select` **New EC2 instanace**
    1.  `Select` **t2.micro**
    1.  **Leave** everything as default
    1.  `Click` **Create**
    1.  After successful creation, 
        1. `Open` the **Cloud9** instance to obtain the external IP.  
        (Note:  this can also be done by viewing the details of the Cloud9 instance)
            1.  `Run` the command **curl ifconfig.me**
            1.  `Record` the <u>external ip</u>.
  
                
1.  <u>Automatic Discovery may take a few minutes</u> (up to 60 min).  Skip to the next section and return later to complete.
    1.  From the **Tenable Cloud Security** Dashboard,  
    1.  `Enter` the <u>external ip</u> found in the steps above.
    1.  `Click` on the name of the **Cloud9** instance that was  created in the step above.

1.  Validation
    1.  Verify the time recorded and resource creation time from the    details widget.  

###### Vulnerability Management and Patch Management

This section will provide the steps needed to scan a validate the customer requirements for Vulnerability Management and Patch Management.

1.  Get a list of assets and software

    1.  From the Tenable Cloud Security Dashboard, 
    1.  `Click` on  **Workload** from the left-menu.
    1.  `Click` on **Workload->Container Images** from the left-menu
    1.  `Click` on the container name under the **Name** heading to   display the details of the container.

    1.  `Click` on the name of one of the assets (ie.  **OHcnappWebserver1**)
    1.  `Click` on the **Workload** tab
    1.  `Click` on the  **Software** tab to view all libraries, software, patches associated with this asset. 
     


1.  To remediate:
    1.   While in the details widget,  `Click` on **Findings** from the left menu
    1.   Search for the policy, **EC2 instance has critical vulnerabilties**
    1.  `Filter` on  **Severity** 
    1.  `Select` **Critical** and **High**
    1.  `Expand` the row 
    1.  `Click` one of the entry
    1.  `Click` on **Remediation** to follow the Remediation steps. 

###### End-of-Life and Unpatched OS Detection
1.  From the Dashboard,   `Click` on the **Container Resources** tile
1.  `Select`, **Container Images**
1.  `Filter` on **Findings** 
1.  `Select` **Container image has and unpached operating system** and **Container image has an operating system which is at or nearing End-of-life**

1.  Validation Question


###### CI/CD pipeline and integration

This section will step you through the setup and run a "blank" GitHub action.

[Reference: Github Example](https://docs.github.com/en/actions/using-workflows/about-workflows)  


1.  To view the configuration:
    1.  From the left-menu, `Click` on **Settings**
    1.  `Click` on **Integrations**
    1.  `Scroll` down to the **CI/CD** section
    1.  `Verify` the setup for the **GitHub** action

1.  To run a CI/CD scan 

    1.  `Click` on **GitHub Actions**
    1.  From the left-menu, `Click` on **Workload->CI/CD scans**
    1.  `Verify` the **Output**


 1.  Validation Questions
    1.  Find a machine name that has an unpatched OS?
    2.  Search for EC2 michines the heve Network Exposure (direct) 


        












