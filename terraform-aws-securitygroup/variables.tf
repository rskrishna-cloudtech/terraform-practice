# Variable to define a variable with the project name.
variable "project_name" {
  type = string
}

# Variable to define a variable with the environment name.
variable "environment" {
  type = string
}

# Variable to define a variable with the security group name.
variable "sg_name" {
  type = string
}

# Variable to define a variable with the security group description.
variable "sg_description" {
  type = string
}

# Variable to store the VPC ID.
variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the security group will be created"
}

# Variable to define a variable with the common tags.
variable "common_tags" {
  type = map(any)
}

# Variable to store security group specific tags.
variable "sg_tags" {
  type    = map(any)
  default = {}
}

# Variable to store the inbound rules.
variable "inbound_rules" {
  type    = list(any)
  default = []
}

# Variable to store the outbound rules.
variable "outbound_rules" {
  type = list(any)
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
