data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "tf-my-instance" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group
  associate_public_ip_address = "true"
  key_name = var.key_name
  tags = {
    Name = var.tag
  }
  volume_tags = {
    Owner = var.owner
  }
  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = var.private_key
      host        = self.public_ip
    }
  }
}