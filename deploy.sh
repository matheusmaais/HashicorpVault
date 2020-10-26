#!bin/bash
echo "\n ========================= \n"
echo "\nStarting script execution \n \n"
echo "Setting Environment Variables \n"
export ANSIBLE_HOST_KEY_CHECKING=False
echo "\n ========================= \n"
echo "\n Terraform Init"
sleep 1
terraform init 
echo "\n ========================= \n"
echo "Terraform Apply"
terraform apply -auto-approve
echo "\n ========================= \n"
echo "Waiting for the server"
sleep 20
ansible-playbook -i ansible/hosts ansible/vault.yml -v
