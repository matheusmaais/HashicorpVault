Deploy Hashicorp Vault Using Terraform + ANSIBLE

PRE REQ: 
TERRAFORM + ANSIBLE + AWS CLI installed + AWS Key Pair ( mykey.pem )

ADD in to this directory your AWS KEY.pem File

CHANGE IN TERRAFORM FILE TO YOUR KEY
  key_name = "YOUR_KEY"
  
 Run in your Terminal 
 $sh deploy.sh
 
 After installed login in to your server
 ssh -i yourKey.pem ubuntu@IP

RUN in the server terminal:
$sudo sh ~/ubuntu/vault/unseal.sh


IF YOU WANT TO DESTROY, RUN IN YOUR MACHINE
$sh destroy.sh

  
