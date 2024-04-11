#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum upgrade -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
yum install -y awscli
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEKY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
