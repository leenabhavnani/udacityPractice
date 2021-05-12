Commands used- 

aws cloudformation create-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml
<br>
aws cloudformation update-stack  --stack-name myFirstTest --region us-west-2 --template-body file://temp.yaml

aws cloudformation describe-stacks --stack-name myFirstTest

aws cloudformation delete-stack --stack-name myFirstTest

aws cloudformation create-stack  --stack-name challenge1 --region us-west-2 --template-body file://challenge1.yml --parameters file://challenge1-parameters.json

aws cloudformation describe-stacks --stack-name challenge1 --region us-west-2

aws cloudformation describe-stack-events --stack-name challenge1
