# Variable to store the vpc CIDR block value.
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# Variable to store the enable_dns_hostnames value.
variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

# Variable to store the tagging values.
variable "project_name" {
  type = string
}

# Variable to store hte tagging values.
variable "environment" {
  type    = string
  default = "dev"
}

# Variable to store the common tags related to project.
variable "common_tags" {
  type = map(any)
}

# Variable to store the common tags related to VPC.
variable "vpc_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the common tags related to IGW.
variable "igw_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the public subnets cidr blocks.
variable "public_subnet_cidrs" {
  type = list(any)

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide valid number of public subnet CIDRs"
  }
}

# Variable to store the public subnet cidr tags.
variable "public_subnet_cidr_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the private subnets cidr blocks.
variable "private_subnet_cidrs" {
  type = list(any)

  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide valid private subnet CIDR "
  }
}

# Variable to store the private subnet cidr tags.
variable "private_subnet_cidr_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the database subnets cidr blocks.
variable "database_subnet_cidrs" {
  type = list(any)

  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide valid database subnet CIDR "
  }
}

# Variable to store the database subnet cidr tags.
variable "database_subnet_cidr_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the database subnet group tags.
variable "database_subnet_group_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the nat gatway tags.
variable "nat_gateway_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the public route table tags.
variable "public_route_table_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the private route table tags.
variable "private_route_table_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the database route table tags.
variable "database_route_table_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the peering required or not flag.
variable "is_peering_required" {
  type    = bool
  default = false
}

# Variable to store the target VPC id for peering.
variable "acceptor_vpc_id" {
  type    = string
  default = ""
}

variable "vpc_peering_tags" {
  type    = map(any)
  default = {}
}
