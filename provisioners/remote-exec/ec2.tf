# Create Security group with rules.
# Inbound - Allow everything or only the port 22 for SSh connection.
# Outbounf - Allow everything.

resource "aws_security_group" "Allow_SSH" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Siva Krishna"
  }

}

# Creating an EC2 instance.
resource "aws_instance" "db_instance" {
  ami                    = data.aws_ami.ami_id.id
  vpc_security_group_ids = [aws_security_group.Allow_SSH.id]
  instance_type          = var.instance_type
  tags = merge(
    var.instance_tags,
    {

    }
  )

  # Provisioners will run when the resources are getting created.
  # remote provisioner to connect to the instance and install the nginx application and start the service.
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  # remote provisioner to install the ansible and then run the ansible-playbook to install the nginx once the instance is created.
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      # "ansible-playbook -i private-ips.txt nginx.yml",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}


