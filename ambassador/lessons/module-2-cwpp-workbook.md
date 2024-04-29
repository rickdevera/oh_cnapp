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

#### Task
1.  Understand which requirements that Tenable Cloud Security meets for each customer require as listed above.

    1.  Simulate preparing for a demo by testing each requirement
    1.  Instructor will guide you through the first steps.

#### Demo Steps

##### Discovery

###### Agentless Scanning 

Tenable Cloud Security leverages APIs to connect to your cloud workload and extract a snapshot of the machines’ storage volumes.

1.  Detailed Explanation of Agentless scanning can be found here:  
    - [How Tenable Scans Your Workloads](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads)  
    - [Scanning Workflow Diagrams](https://docs.ermetic.com/docs/how-ermetic-scans-your-workloads#scanning-workflow-diagrams)

1.  `Click` on **Inventory** from the left menu.
1.  `Click` on **Compute->EC2 Instances**
1.  `Click` on any workload under the **Name** column.  (ie.  <u>OHcnappEC2Workload01</u>)
1.  `Click` on the *vertical ellipses* button and `Select` **Scan Now**
    1.  This will create begin a scan without any agents installed on the workload.

###### Automatic Discovery
Automatic discovery will depend on the sychronization intervals and can take up several minutes to complete.  Due to time constraints in the classroom, this is recommended to be completed prior to validating the steps this in a demo.


1.  Automatic 

    1.  Follow steps below and validate the changes by viewing the Inventory of assets.  
    
    
    1.  Go the the Activity Log and  These steps will demonstrate automatic asset discovery by creating a new resource in AWS.  We will start a Cloud9 instance, record the IP, and validate the new resource by searching the IP.  Due to the time delay, ***the following steps will be instructor led.***

1.  Realtime


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
            1.  Get the external IP in Cloud9, the instance must be running

                1. Method 1
                    1.  `Open` the **Cloud9** instance to obtain the external IP.  
                        (Note:  this can also be done by viewing the details of the Cloud9 instance)
                    1.  `Run` the command **curl ifconfig.me**
                    1.  `Record` the <u>external ip</u>.
                1.  Method 2
                    1.  `Open` the **Instance ID** for the Cloud9 instance that was created 
                    1.  On the summary page, the Public IP is found under **Public IPv4 address**.
  
                
     1.  <u>Automatic Discovery may take a few minutes depending on the sync interval</u> (several min to a few hours).         - See [Architecture and Data Handling](https://docs.ermetic.com/docs/architecture-and-data-handling#how-your-environment-is-analyzed)  Skip to the next section and return later to complete.
        1.  From the **Tenable Cloud Security** Dashboard,  
        1.  `Enter` the <u>external ip</u> found in the steps above.
        1.  `Click` on the name of the **Cloud9** instance that was  created in the step above.
        1.  This validates automatic discover.

###### Vulnerability Management and Patch Management

This section will allow provide steps to identify vulnerabilities in cloud workloads, containers, and generate findings on remediation recommendations on workloads.

1.  Get a list of assets and software

    1.  From the Tenable Cloud Security Dashboard, 
    1.  `Click` on  **Workload** from the left-menu.
    1.  `Click` on **Workload->Container Images** from the left-menu
    1.  `Click` on the container name under the **Name** heading to   display the details of the container.

    1.  `Click` on the name of one of the assets  
        1.  (ie.  public.ecr.aws/i3j2g7c0/cnappgoat-images:xmrig_image1.)
    1.  `Click` on the **Workload** tab
    1.  `Click` on the  **Software** tab to view all libraries, software, patches associated with this asset. 
     

1.  To remediate:
    1.   While in the details widget,  `Click` on **Findings** from the left menu
    1.  `Click` in the listing for one of the displayed findings.
    1.  `Click` on **Remediation** to `view` the Remediation steps. 

###### End-of-Life and Unpatched OS Detection
This section will provide you demo steps to identify workloads and containers that might be end-of-life and unpatched.

1.  For containers
    1.  From the Dashboard,   `Click` on the **Container Resources** tile
    1.  `Select`, **Container Images**
    1.  `Filter` on **Findings** 
    1.  `Select` **Container image has an unpatched operating system** 
        1.  To remediate:
            1.   While in the details widget,  `Click` on **Findings** from the left menu
        1.  `Click` in the listing for one of the displayed findings.
        1.  `Click` on **Remediation** to `view` the Remediation steps. 
        1.  `View` the remediation details

1.  Another search method
    Another way to quickly find assets that are misconfigured is to search by the **Policy**
    1.  `Click` on **Policy** on the left menu
    1.  `Click` the **Filter** button and `Enter` **unpatched** 
    1.  From the list `Select`  **Container image has an unpatched operating system**
    1.  `Click` on the one of the links under the **Risk** (ie <b><u>2 out of 5 resources failed...)</u></b>


###### CI/CD pipeline and integration

The configuration steps requires **Administrator**.  This section will provide high-level details of the setup steps and run a "blank" GitHub action.   Additional information can be found using the following reference links  [Connect you CI/CD pipeline](https://docs.ermetic.com/docs/connect-your-cicd-pipeline)


1.  Configuration

    1.  To view the configuration:
        1.  From the left-menu, `Click` on **Settings**
        1.  `Click` on **Integrations**
        1.  `Scroll` down to the **CI/CD** section
        1.  `Verify` the setup for the **GitHub Actions** 
        1.  `Follow` the instructions in the Wizard.

1.  Setup GitHub Actions
    1.  To run this demo, you must setup a GitHub Action
    1.  `Setup` a GitHub Action using the [reference: Github Example](https://docs.github.com/en/actions/using-workflows/about-workflows)  

1.  To run a CI/CD scan 

    1.  `Click` on **GitHub Actions**  
    1.  From the left-menu, `Click` on **Workload->CI/CD scans**
    1.  `Verify` the **Output**  

 1.  Validation Questions  
    1.  Provide a list of resources that violate the policy named  ***Container image has critical vulnerabilities***. 
    1.  Provide a list of failed policies for under **Workload Protect** for the AWS account named,  **account-ro**.
    1.  



        












