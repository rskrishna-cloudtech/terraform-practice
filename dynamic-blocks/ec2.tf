# Create Security group with rules.
# Inbound - Allow everything or only the port 22 for SSh connection.
# Outbounf - Allow everything.

resource "aws_security_group" "Allow_SSH" {
  name        = var.sg_name
  description = var.sg_description

  # ingress = {
  #   from_port   = var.ssh_port
  #   to_port     = var.ssh_port
  #   protocol    = var.protocol
  #   cide_blocks = var.cidr_blocks
  # }

  # Created a dynamic block to loop through all the ports and create the inbound rules.

  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
      from_port   = ingress.value["port"]
      to_port     = ingress.value["port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["allowed_cidr"]
    }
  }

  egress = {
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
  # count = length(var.instance_names)

  # Getting the value by looping through the map defined in the variable.tf.
  for_each               = var.instance_names
  ami                    = data.aws_ami.ami_id.id
  vpc_security_group_ids = [aws_security_group.Allow_SSH.id]
  # instance_type          = var.instance_names[count.index] == "frontend" ? "t2.micro" : "t3.medium"
  # Getting the instance type from the for-each loop.
  instance_type = each.value
  # instance_type          = local.instance_type
  tags = merge(
    local.tags,
    {
      # Getting the name from for-each loop.
      Name = each.key
    }
  )
}

