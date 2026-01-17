# Terraform module to call source resource file.
module "aws-vpc" {
  source                = "../terraform-aws-vpc"

  # To get the source file form the github repo.
  # source = "<github-url-of-repo>"
  
  project_name          = var.project_name
  common_tags           = var.common_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required   = var.is_peering_required
}
