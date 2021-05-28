
aws cloudformation create-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2

aws cloudformation create-stack --stack-name myIAC3Stack --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --template-body file://IACChallenge3.yaml  --parameters file://IACChallenge3Parameter.json --region=us-west-2