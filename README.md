# Deploy Hashicorp Vault with Terraform + Ansible
The objective of this project is to automate the deployment of Hashicorp Vault using the well-known DevOps tools: 
 * Terraform (to provision the infrastructure) 
 * Ansible to manage our configuration

### Requirements

 * Terraform
 * Ansible
 * AWS CLI
 * AWS KeyPair
 * All actions were performed on MacOS, but they certainly work in a Linux environment

### Execution
 * Clone the repository
 * Edit the ec2.tf file "YOUR_KEY" fields and change it to the name of your aws par key
 * Run on your machine:
```sh
   $ sh deploy.sh
```
 * Wait for Ansible to finish its execution
 * The script will create a ./ansible/key.txt in your current directory, copy root key

### Access URL
 * http://IP:8200
 * login with your root key
### Destroy
 * Run in your local machine
 ```sh
   $ sh destroy.sh
```

