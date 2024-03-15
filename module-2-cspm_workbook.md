# Tenable Cloud Secuirty Lab Workbook - CSPM Testing

## Introduction

This document outlines test scripts designed to verify the functionality of cloud security posture management (CSPM) features within the Tenable Cloud Security platform. The tests focus on asset discovery, compliance monitoring, and vulnerability assessment.

### Test Environment

- **Cloud Provider(s):** AWS  

**Note**:  *Tenable Cloud Security is a mulit-cloud solutions for AWS, GCP, and Microsoft Azure*
- **Tenable Cloud Security**
- **Lab Platform:** AWSJams

### Prerequisites

- Unique login to Tenable Cloud Security platform with [view, collaborator, administrator] log in permissions.
- AWS account.
- Pre-defined compliance standards and policies.

## Test Steps

### 1.  Onboaording AWS

[Reference - Onboard an Account](https://docs.ermetic.com/v1/docs/onboard-aws#onboard-an-account)

### 1. Asset Discovery

#### Objective

Verify that Tenable Cloud Security accurately discovers and lists all cloud assets across multiple environments.

#### Steps

1. **Prepare the Environment:** 
   - Onboard AWS account

1. **Initiate Discovery:**
   - Navigate to the asset discovery section.
   - Trigger a manual discovery scan or wait for the next scheduled scan.

1. **Verify Discovery:**
   - Check the list of discovered assets in Tenable Cloud Security.
   - Confirm that all deployed resources are accurately identified and listed.

1. **Documentation:**
   - Take screenshots or export the list of discovered assets.
   - Document any discrepancies or issues.

### 1. Compliance Monitoring

#### Objective

Ensure that Tenable Cloud Security can assess cloud environments against pre-defined compliance standards and policies.

#### Steps

1. **Define Compliance Standards:**
   - Verify that compliance standards (e.g., CIS AWS Foundations Benchmark) are configured in the platform.

1. **Conduct Compliance Scan:**
   - Initiate a compliance scan against your cloud environment.

1. **Evaluate Results:**
   - Review the compliance assessment report.
   - Check for any violations or non-compliant resources.

1. **Remediation Verification:**
   - Apply remediation steps to non-compliant resources.
   - Re-run the compliance scan to verify fixes.

1. **Documentation:**
   - Record findings, remediation actions, and post-remediation results.

### 1. Vulnerability Assessment

#### Objective

Test the capability of Tenable Cloud Security to identify vulnerabilities within the cloud environment.

#### Steps

1. **Setup:**
   - Ensure cloud resources with known vulnerabilities are present in your test environment.

1. **Run Vulnerability Scan:**
   - Navigate to the vulnerability assessment section.
   - Initiate a scan of your cloud environment.

1. **Analyze Results:**
   - Examine the vulnerability assessment report for identified risks.
   - Verify that known vulnerabilities are detected.

1. **Remediation and Reassessment:**
   - Address identified vulnerabilities.
   - Perform another scan to confirm the effectiveness of remediation measures.

1. **Documentation:**
   - Document the initial findings, remedial actions taken, and the results of the reassessment scan.

### Conclusion

This set of test scripts provides a baseline for evaluating the CSPM features of Tenable Cloud Security. Adjustments may be required based on specific cloud configurations and organizational security policies.
