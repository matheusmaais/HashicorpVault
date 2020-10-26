#!bin/bash
echo "\n ========================= \n"
echo "\nIniciando Execução do Script \n \n"
echo "Setando Variaveis de ambiente \n"
export ANSIBLE_HOST_KEY_CHECKING=False
echo "\n ========================= \n"
echo "\n Rodando terraform Init"
sleep 1
terraform init 
echo "\n ========================= \n"
echo "Rodando terraform Apply"
terraform apply -auto-approve
echo "\n ========================= \n"
echo "Aguardando o servidor ficar pronto para rodar o Ansible"
sleep 15
ansible-playbook -i ansible/hosts ansible/vault.yml -vvvvv