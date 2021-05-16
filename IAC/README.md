## All about this repo
## _**Getting Started with CloudFormation**_

### Task 1 : Create a VPC and understand various stack commands
  
    aws cloudformation create-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml
    
    aws cloudformation update-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml

    aws cloudformation describe-stacks --stack-name myFirstTest

    aws cloudformation delete-stack --stack-name myFirstTest
  
### Task 2 : Challenge 1 - Create an EC2 instance in a given VPC and deploy the Apache Web Server
   Note- Update the AMI Images, VPC ID and Subnet ID in the parameter file before running the below commands

    aws cloudformation create-stack  --stack-name challenge1 --region us-west-2 --template-body file://challenge1.yml --parameters file://challenge1-parameters.json

    aws cloudformation describe-stacks --stack-name challenge1 --region us-west-2

    aws cloudformation describe-stack-events --stack-name challenge1
    
## _**Networking Infrastructure**_
  
### Task 3 : Build the resources - Virtual Private Cloud and subnets && Internet gateway and NAT gateway && Route table

    aws cloudformation create-stack --stack-name myInfraStack --template-body file://myInfra.yaml  --parameters file://myInfraParameter.json --region=us-west-2

### Task 4 : Create an "extension of the on-premises network". Using the CloudFormation script to deploy a private corporate cloud.
You’ll need to remove any components not needed (such as public subnets and NAT Gateways). There is no need to connect the VPN to anything, but go ahead and include it in your code.

    aws cloudformation update-stack --stack-name myPrivateNetworkStack --template-body file://private-network.yaml  --parameters file://private-networkParameter.json --region=us-west-2
  
### Task 5 : Challenge 2 - Write a CloudFormation script to create multiple resources as per the guide. (screenshot of the final resources created attached)

    aws cloudformation create-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2

## _**Servers and Security Groups**_

### Task 6 : Build the resources with the extension of the resources created as part of Task 3 - Security Groups for Load Balancer and Web Servers, Launch Configuration and Auto Scaling Group along with Load Balancer with Listener and Target Group. Verify the deployment by access the LB URL.

    aws cloudformation create-stack --stack-name myInfraStack --template-body file://myInfra.yaml  --parameters file://myInfraParameter.json --region=us-west-2

    aws cloudformation create-stack --stack-name myServerStack --template-body file://myServers.yaml  --parameters file://myServersParameter.json --region=us-west-2


### Task 7 : Challenge 3 - You have been tasked with deploying a Linux server in a private subnet, using the infrastructure that you created in a previous exercise. AWS Systems Manager service will allow you to connect to this server and verify it’s working properly. Once the EC2 isntance is created, access it via Systems manager.

  
    aws cloudformation create-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2

    aws cloudformation create-stack --stack-name myIAC3Stack --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --template-body file://IACChallenge3.yaml  --parameters file://IACChallenge3Parameter.json --region=us-west-2
  
  
### Project 2 -
