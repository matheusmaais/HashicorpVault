resource "aws_instance" "vault_server" {

  ami = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
  security_groups = ["vault_sg"]
  key_name = "YOUR_KEY" ##CHANGE
  tags = {
   Name = "Vault"
  }
  #CHANGE YOUR_KEY field 
  provisioner "local-exec" {
     command = "echo [vault-server] '\n' ${aws_instance.vault_server.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=./PATH_TO_YOUR_KEY.pem > ./ansible/hosts"
   }
}