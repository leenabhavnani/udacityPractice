## All about thie repo

### Task 1 : Create a VPC and understand various stack commands
  
    aws cloudformation create-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml
    <br>
    aws cloudformation update-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml

    aws cloudformation describe-stacks --stack-name myFirstTest

    aws cloudformation delete-stack --stack-name myFirstTest
  
### Task 2 : Challenge 1 - Create an EC2 instance in a given VPC

    aws cloudformation create-stack  --stack-name challenge1 --region us-west-2 --template-body file://challenge1.yml --parameters file://challenge1-parameters.json

    aws cloudformation describe-stacks --stack-name challenge1 --region us-west-2

    aws cloudformation describe-stack-events --stack-name challenge1
  
### Task 3 : Build the following resources - Virtual Private Cloud and subnets && Internet gateway and NAT gateway && Route table

    aws cloudformation create-stack --stack-name myInfraStack --template-body file://myInfra.yaml  --parameters file://myInfraParameter.json --region=us-west-2

### Task 4 : Create an "extension of the on-premises network". Using the CloudFormation script to deploy a private corporate cloud.
You’ll need to remove any components not needed (such as public subnets and NAT Gateways). There is no need to connect the VPN to anything, but go ahead and include it in your code.

    aws cloudformation update-stack --stack-name myPrivateNetworkStack --template-body file://private-network.yaml  --parameters file://private-networkParameter.json --region=us-west-2
  
### Task 5 : Challenge 2 - Write a CloudFormation script to create multiple resources

   aws cloudformation create-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2

### Task 6 :
