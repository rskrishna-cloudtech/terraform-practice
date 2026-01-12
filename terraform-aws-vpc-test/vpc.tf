# Terraform module to call source resource file.
module "aws-vpc" {
  source              = "../terraform-aws-vpc"
  project_name        = var.project_name
  common_tags         = var.common_tags
  public_subnet_cidrs = var.public_subnet_cidrs
}