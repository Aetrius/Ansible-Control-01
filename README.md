# Ansible & Prometheus Demo
This demo project is a test to try out Ansible and Prometheus in AWS. This requires a deployment of CloudFormation, Building an Ansible EC2 instance, and configuration.


### Deploy the CloudFormation Script
> setup-env.yml to AWS CloudFormation

### Files:
ansible-configuration.sh 
> The configuration file is used to run via a crontab. Every minute the process runs to trigger a copy command.

hosts-dev.ini
> The configuration file for Ansible. This file is stored into a private S3 bucket.

setup-env.yml 
> The configuration file is for cloud formation.



## Requirements: AWS IAM & EC2
> Create an IAM role with permissions for EC2 to have access to the S3 bucket needed for the configuration file.
> Create an S3 bucket i.e. ansible-configuration-master
> Copy the ansible-configuration.sh to the S3 bucket, hosts-dev.ini to the S3 bucket, and create a logging directory.
> Provision an Ansible server (I used centos (latest version)). 
>> Build an EC2 instance.


## Install Ansible on Centos
>> sudo amazon-linux-extras install ansible2

## Setup Ansible Automated Pull
>> aws s3 cp s3://ansible-configuration-master/ansible-configuration.sh
>> chmod u+x ansible-configuration.sh
>> crontab -e 


>> [* * * * * /home/ec2-user/ansible-configuration.sh]
