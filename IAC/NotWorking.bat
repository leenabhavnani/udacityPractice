
aws cloudformation create-stack --stack-name myInfraStack --template-body file://myInfra.yaml  --parameters file://myInfraParameter.json --region=us-west-2

aws cloudformation create-stack --stack-name myServerStack --template-body file://myServers.yaml  --parameters file://myServersParameter.json --region=us-west-2
