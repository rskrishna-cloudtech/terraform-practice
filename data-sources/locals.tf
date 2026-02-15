# Creating few local values to avoid repetition of code.
locals {
  ami_id        = data.aws_ami.ami_id.id
  instance_type = var.instance_names == "db" ? "t3.micro" : "t3.small"

  tags = {
    Name = "locals"
  }
}
