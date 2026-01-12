# To store the resource name as a local.
locals {
  resource_name = "${var.project_name}-${var.environment}"
  azs_names     = data.aws_availability_zones.zones
}
