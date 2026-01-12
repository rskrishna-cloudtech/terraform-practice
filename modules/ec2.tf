# Calling the source file created in another directory.

module "aws_ec2" {
  source = "../module-source"

  tags = {
    Name = "Terraform Module"
  }
}
