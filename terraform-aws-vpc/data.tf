# To get the list of azs available in the region.
data "aws_availability_zones" "zones" {
  state = "zones"
}
