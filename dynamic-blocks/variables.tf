# Variable to store the instance names.
variable "instance_names" {
  type = map(any)
  default = {
    db       = "t3.small",
    backend  = "t3.micro",
    frontend = "t3.micro"
  }
  description = "List of instance names"
}

# Variable to store the AMI id.
variable "image_id" {
  type        = string
  default     = "ami-090252cbe067a9e58"
  description = "The AMI ID for the EC2 instance"
}

# Variable to store the instance type.
variable "instance_type" {
  type = string
  # default     = "t2.micro"
  description = "The instance type for the EC2 instance"
}

# Variable to store the tag details.
variable "instance_tags" {
  default = {
    Project     = "MyPractice"
    Environment = "Development"
    Module      = "DB"
    Name        = "DB"
  }
  description = "Tags to apply to the EC2 instance"
}

# Variables to store the SG name.
variable "sg_name" {
  type        = string
  default     = "Allow_SSH"
  description = "The name of the security group"
}

# Variable to store the SG description.
variable "sg_description" {
  type        = string
  default     = "Allowing SSH access"
  description = "The description of the security group"
}

# Variable to store the SSH port.
variable "ssh_port" {
  type        = number
  default     = 22
  description = "The SSH port for the security group"
}

# Variable to store the protocol.
variable "protocol" {
  type        = string
  default     = "tcp"
  description = "The protocol for the security group"
}

# Variable to store the CIDR blocks.
variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "The CIDR blocks for the security group"
}

# Variable to store the list of sg details to open the mutliple ports for inbound.
variable "inbound_rules" {
  type = list(any)
  default = [
    {
      port         = 22
      allowed_cidr = ["0.0.0.0/0"]
      protocol     = "tcp"
    },
    {
      port         = 80
      allowed_cidr = ["0.0.0.0/0"]
      protocol     = "tcp"
    },
    {
      port         = 8080
      allowed_cidr = ["0.0.0.0/0"]
      protocol     = "tcp"
    }
  ]
}
