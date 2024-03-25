
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

### Requirements

_______________
Below are individual requirements categorized by use-cases and the steps used to meet the requirements.

#### Discovery

-  Agentless scanning of AWS workloads
- Agentless scanning of Azure workloads
- Agentless scanning of GCP workloads
- Automatic discovery of container images running on cloud - workloads
- Software asset inventory for cloud workloads (libraries, packages, OS)
- Detect container images running in the cloud
- Associate container images running in cloud with underlying workloads
- Visibility into software asset inventory for container images (libraries, packages, etc)


#### Vulnerabilities

- Identify vulnerabilities on cloud workloads
- Identify vulnerabilities on container running in cloud
- Generate findings on vulnerable workloads 
- Provide remediation guidance for vulnerable workloads
- Scan ECR for vulnerable containers 

#### Patch Management

- Identify unpatched operating systems
- Identify containers using end-of-life operating systems
- Identify containers using unpatched operating systems

#### CI/CD Scanning

- Identify vulnerable container images during the build process
- Block the build pipeline based on identified vulnerabilities in container images
- Scan container images using Github Actions
- Scan container images during build using Docker container (other pipelines)

