### Scenario: CloudTech Solutions Sales Pitch

#### Background:

The customer is a rapidly growing FinTech startup that leverages a multi-cloud strategy across Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP) to support its diverse range of financial services. The startup has a dynamic deployment environment with numerous containerized applications running across these cloud platforms. Their DevOps teams use GitHub Actions for CI/CD workflows and containerization with Docker for application deployment. Despite their growth, the startup has encountered challenges in maintaining a robust security posture, specifically in identifying and mitigating vulnerabilities across their cloud workloads and containerized applications.

#### Customer Requirements:

- **Agentless Scanning**: The startup seeks a solution that can perform agentless scanning of their AWS, Azure, and GCP workloads to avoid the overhead of managing agents on each virtual machine or container.
- **Automatic Discovery**: They require automatic discovery of container images running on cloud workloads to ensure all assets are accounted for and analyzed.
- **Software Asset Inventory**: A detailed inventory of the software assets (libraries, packages, OS) for both cloud workloads and container images is crucial for understanding their attack surface.
- **Vulnerability Identification and Remediation**: The customer needs to identify vulnerabilities in both cloud workloads and containers, with clear remediation guidance for any issues found.
- **End-of-Life and Unpatched OS Detection**: Identifying end-of-life or unpatched operating systems in their cloud environment and containers is essential for compliance and security hygiene.
- **Integration with CI/CD and Container Registries**: The solution must integrate with their existing GitHub Actions CI/CD pipelines for scanning container images during the build process and support scanning container registries like ECR (AWS), ACR (Azure), and GAR (GCP).

#### Demo Steps

##### Discovery

1.  Agentless Scanning

    1.  Detailed Explanation of Agentless scanning can be found here:  
        - [How Tenable Scans Your Workloads](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads)  
        - [Scanning Workflow Diagrams](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads#scanning-workflow-diagrams)

1.   Automatic Discovery

    1.  From the AWS console,
    1.  `Record` the time.
    1.  `Create` and **AWS Cloud9** environment
        1.  Use the following details:
            1.  Name:  **mycloud9**
            1.  Description:  testing automatic discovery
            1.  `Select` **New EC2 instanace**
            1.  `Select` **t2.micro**
            1.  **Leave** everything as default
            1.  `Click` **Create**
        1.  After successful creation,  `Open` the **Cloud9** instance.
        1.  At the *cli**, `run` the command **curl ipconfig.me** to record the external ip.
    
    1.  Discovery may take a few minutes (up to 60 min) depending on the amount of activity.  Skip the steps and return later to complete.
        1.  From the **Tenable Cloud Security** Dashboard,  
        1.  `Enter` the <u>external ip</u> found in the steps above.
        1.  `Click` on the name of the **Cloud9** instance that was  created in the step above.

1.  Vulnerability Management and Patch Management

    1.  Get a list of assets and software

        1.  From the Tenable Cloud Security Dashboard, `Click` on  **Workload** from the left-menu.
        1.  `Click` on **Workload->Container Images** from the left-menu
        1.  `Click` on the container name (ie ) will display the details of the container.
        1.  `Search` for **Network Exposure** is **Internet (Direct)** and **Internet (Indirect)**
        1.  `Click` on the name of one of the assets (ie.  **OHcnappWebserver1**)
        1.  `Click` on **Workload**
        1.  `Click` on the  **Software** tab to view all librarys, software, patches associated with this asset.  

    1.  To remediate:
            1.   While in the details widget,  `Click` on **Findings** from the left menu
            1.   Search for the policy, **EC2 instance has critical vulnerabilties**
            1.  `Click` on the entry
            1.  `Click` on **Remediation** to follow the Remediation steps.













