# To get the list of azs available in the region.
data "aws_availability_zones" "zones" {
  state = "available"
}

# To get the default VPC id.
data "aws_vpc" "default" {
  default = true
}

# To get the default VPC main route table.
data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name   = "association.main"
    values = ["true"]
  }
}
