# To get the list of azs available in the region from module.
output "azs_info" {
  value = module.aws-vpc.azs
}
