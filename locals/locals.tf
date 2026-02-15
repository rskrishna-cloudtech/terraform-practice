# Creating few local values to avoid repetition of code.
locals {
  ami_id        = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_names == "frontend" ? "t3.micro" : "t3.small"

  tags = {
    Name = "locals"
  }
}
