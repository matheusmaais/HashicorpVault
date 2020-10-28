#!bin/bash
echo "Iniciando > key.txt"
vault operator init > /etc/vault.d/key.txt
sleep 2
echo "unseal 1"
vault operator unseal $(grep 'Key 1:' /etc/vault.d/key.txt | awk '{print $NF}')
sleep 1
echo "unseal 2"
vault operator unseal $(grep 'Key 2:' /etc/vault.d/key.txt | awk '{print $NF}')
sleep 1
echo "unseal 3"
vault operator unseal $(grep 'Key 3:' /etc/vault.d/key.txt | awk '{print $NF}')
#vault login $(grep 'Root Token:' /etc/vault.d/key.txt | awk '{print $NF}')

