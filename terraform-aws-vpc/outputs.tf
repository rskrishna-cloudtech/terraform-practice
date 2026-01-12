# To get the list of azs available in the region using the data source.
output "azs" {
  value = data.aws_availability_zones.zones
}
