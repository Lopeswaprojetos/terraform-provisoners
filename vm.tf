resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-0fb4cf3a99aa89f72"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public-ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./aws-key")
    host        = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.subnet_id} >> /tmp/network_info.txt",
      "echo security_group_id: ${data.terraform_remote_state.vpc.outputs.security_group_id} >> /tmp/network_info.txt",
    ]
  }

  provisioner "file" {
    source      = "./teste.txt" ## Copia um arquivo da minha maquina local para a maquina remota
    destination = "/tmp/exemplo.txt"
  }

  provisioner "file" {
    content     = "ami used: ${self.ami}" ## Salvando a AMI dentro de um arquivo de texto
    destination = "/tmp/ami.txt"
  }
}
