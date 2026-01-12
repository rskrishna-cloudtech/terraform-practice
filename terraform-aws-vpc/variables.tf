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

# Variable to store the subnets cidr blocks.
variable "public_subnet_cidrs" {
  type = list(any)

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide valid public subnet CIDR "
  }
}

# Variable to store the public subnet cidr tags.
variable "public_subnet_cidr_tags" {
  type    = map(any)
  default = {}
}
