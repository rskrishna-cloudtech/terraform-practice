# To get the list of azs available in the region using the data source.
output "azs" {
  value = data.aws_availability_zones.zones
}

# To get the vpc id.
output "vpc_id" {
  value = aws_vpc.main.id
}

# To get the public subnet id.
output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

# To get the private subnet id.
output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

# To get the database subnet id.
output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}

# To get the database subnet group id.
output "database_subnet_group_id" {
  value = aws_db_subnet_group.default.id
}

# To get the database subnet group name.
output "database_subnet_group_name" {
  value = aws_db_subnet_group.default.name
}

# To get the internet gateway id.
output "igw_id" {
  value = aws_internet_gateway.igw.id
}
