aws cloudformation create-stack --stack-name myInfraStack --template-body file://myInfra.yaml  --parameters file://myInfraParameter.json --region=us-west-2


aws cloudformation create-stack --stack-name myPrivateNetworkStack --template-body file://private-network.yaml  --parameters file://myPrivateNetwork.json --region=us-west-2