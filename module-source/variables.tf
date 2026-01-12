# Variable to store the ami id.
variable "ami_id" {
  type = string
  default = "ami-090252cbe067a9e58"
}

# Variable to store the instance types.
variable "instance_type" {
  type = string
  default = "t3.micro"
}

# Variable to store the tag details.
variable "instance_tags" {
  type = map
  default = {}
}