
# Testing **Tenable Cloud Security** JIT in AWS Cloud Environment

This hands-on lab guide provides step-by-step instructions for testing **Tenable Cloud Security**'s Just-In-Time (JIT) access solution in the AWS cloud environment. **Tenable Cloud Security** JIT enhances security by granting temporary access to AWS resources, ensuring users have access only when needed.

## Prerequisites

- An AWS account with administrative access.
- Basic understanding of AWS IAM roles and policies.
- **Tenable Cloud Security** account and access to its JIT feature.

## Objectives

- Set up an IAM role for testing JIT access.
- Configure JIT access in **Tenable Cloud Security**.
- Test JIT access to an AWS resource.

## Step 1: Set Up IAM Role for JIT Access

1. **Login to AWS Management Console**
   Navigate to the AWS Management Console and log in using your credentials.

2. **Create IAM Role**
   - Go to the IAM dashboard.
   - Click on **Roles** on the left sidebar, then click **Create role**.
   - Choose **AWS service** for the type of trusted entity and select **EC2** as the use case. Click **Next: Permissions**.
   - Skip attaching permission policies for now. Click **Next: Tags**.
   - (Optional) Add tags as required. Click **Next: Review**.
   - Name the role `**Tenable Cloud Security**JITTestRole`, provide a description, and click **Create role**.

3. **Modify the Trust Relationship**
   - After creating the role, click on it and navigate to the **Trust relationships** tab.
   - Click **Edit trust relationship**.
   - Replace the policy document with the trust relationship policy provided by **Tenable Cloud Security**, typically allowing **Tenable Cloud Security** to assume this role for JIT access. Click **Update Trust Policy**.

## Step 2: Configure JIT Access in **Tenable Cloud Security**

1. **Log In to **Tenable Cloud Security****
   Access your **Tenable Cloud Security** platform using your credentials.

2. **Configure JIT Policy**
   - Navigate to the JIT access configuration section.
   - Create a new JIT policy, specifying the conditions under which JIT access should be granted.
   - Associate the `**Tenable Cloud Security**JITTestRole` IAM role with this policy.

3. **Set Up Users/Groups for JIT Access**
   - In the policy settings, define which users or groups should be eligible for JIT access.
   - Specify the duration for which the access should be valid.

## Step 3: Test JIT Access

1. **Request JIT Access**
   - As a user eligible for JIT access, initiate a request through the **Tenable Cloud Security** platform.
   - Specify the reason for access and the duration as per the policy defined.

2. **Approve Access Request**
   - An administrator or automated process needs to approve the access request.
   - Once approved, **Tenable Cloud Security** temporarily attaches the necessary permissions to the `**Tenable Cloud Security**JITTestRole` IAM role.

3. **Access AWS Resource**
   - Assuming the role `**Tenable Cloud Security**JITTestRole`, attempt to access the specified AWS resource.
   - Verify that access is granted as expected and is only available for the specified duration.

4. **Monitor and Audit Access**
   - Use **Tenable Cloud Security**'s monitoring tools to audit the JIT access.
   - Review logs to ensure access was granted as requested and revoked after the specified duration.

## Conclusion

This hands-on lab demonstrated setting up, configuring, and testing **Tenable Cloud Security**'s JIT access in an AWS cloud environment. By following these steps, you can enhance your AWS security posture by ensuring users have just-in-time access to resources, minimizing the risk of unauthorized access.

Remember to delete or modify any resources and roles you no longer need to avoid unnecessary charges and maintain security.

---

This guide is a starting point. Customize the steps based on your specific AWS environment and **Tenable Cloud Security**'s features and capabilities.