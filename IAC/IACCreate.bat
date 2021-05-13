Rem aws cloudformation create-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2

aws cloudformation update-stack --stack-name myIACStack --template-body file://IACChallenge2.yaml  --parameters file://IACChallenge2Parameter.json --region=us-west-2