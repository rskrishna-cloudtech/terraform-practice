# Creating few local values to avoid repetition of code.
locals {
  ami_id = "ami-090252cbe067a9e58"
  instance_type = var.instance_names[count.index] == "frontend" ? "t2.micro" : "t3.medium"

  tags = {
    Name = "locals"
  }
}
