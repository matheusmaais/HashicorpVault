#!bin/bash
echo "Rodando Nohup"
nohup vault server -config=/home/ubuntu/vault/config.hcl &
sleep 3
echo "Export"
export VAULT_ADDR="http://0.0.0.0:8200"
sleep 1
echo "Iniciando > key.txt"
vault operator init > /home/ubuntu/vault/key.txt
sleep 10
export VAULT_ADDR="http://0.0.0.0:8200"
echo "unseal 1"
vault operator unseal $(grep 'Key 1:' key.txt | awk '{print $NF}')
sleep 3
echo "unseal 2"
vault operator unseal $(grep 'Key 2:' key.txt | awk '{print $NF}')
sleep 3
echo "unseal 3"
vault operator unseal $(grep 'Key 3:' key.txt | awk '{print $NF}')
sleep 2
vault status 
