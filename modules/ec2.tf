# Calling the source file created in another directory.

module "aws_ec2" {
  source = "../module-source"

  instance_type = "t3.small"

  instance_tags = {
    Name = "Terraform Module"
  }
}
