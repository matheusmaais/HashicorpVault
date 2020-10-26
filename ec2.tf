resource "aws_instance" "vault_server" {

  ami = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
  security_groups = ["vault_sg"]
  key_name = "YOUR_KEY"
  tags = {
   Name = "Vault"
  }

  provisioner "local-exec" {
     command = "echo [vault-server] '\n' ${aws_instance.vault_server.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=./matheusmaais.pem > ./ansible/hosts"
   }
}