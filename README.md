# HashicorpVault
PRE REQ: 
TERRAFORM + ANSIBLE + AWS CLI installed

ADD in to this directory your terraform KEY.pem File

CHANGE IN TERRAFORM FILE TO YOUR KEY
  key_name = "YOUR_KEY"
  
 Run in your Terminal 
 $sh deploy.sh
 
 After installed login in to your server and run
 $sh ~/ubuntu/vault/unseal.sh
  
