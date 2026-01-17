# Local values for security group naming convention
locals {
  sg_name = "${var.project_name}-${var.environment}-${var.sg_name}"
}
