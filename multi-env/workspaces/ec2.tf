# Create Security group with rules.
# Inbound - Allow everything or only the port 22 for SSh connection.
# Outbounf - Allow everything.

resource "aws_security_group" "Allow_SSH_dev" {
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
    Name      = "allow_ssh_dev"
    CreatedBy = "Siva Krishna"
  }

}

# Creating an EC2 instance.
resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami_id.id
  vpc_security_group_ids = [aws_security_group.Allow_SSH_dev.id]
  instance_type          = lookup(var.instance_names, terraform.workspace)
  tags = merge(
    var.instance_tags,
    {
      Name        = terraform.workspace
      Environment = terraform.workspace
    }
  )
}

