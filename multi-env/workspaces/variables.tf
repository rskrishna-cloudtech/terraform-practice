# Variable to store the instance names.
variable "instance_names" {
  type = map(any)
  default = {
    dev  = "t3.small"
    prod = "t3.micro"
  }
  description = "List of instance names"
}

# Variable to store the default environment name.
variable "environment" {
  default = ""
}

# Variable to store the AMI id.
variable "image_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "The AMI ID for the EC2 instance"
}

# Variable to store the instance type.
variable "instance_type" {
  type        = string
  default     = ""
  description = "The instance type for the EC2 instance"
}

# Variable to store the tag details.
variable "instance_tags" {
  default = {
    Project = "MyPractice"
    # Environment = "Development"
    Module    = "DB"
    Name      = "DB"
    Terraform = "True"
  }
  description = "Tags to apply to the EC2 instance"
}

# Variables to store the SG name.
variable "sg_name" {
  type        = string
  default     = "Allow_SSH_DEV"
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

# R53 records variables
# Variable to store the zone_id of the r53 record.
variable "zone_id" {
  type = string
  # Copy the zone if from the R5 record from AWS console. Route 53 --> Hosted zones --> <domain-name> --> Hosted zone details.
  default     = "Z0717631Z7LUOW4UR5SA"
  description = "The zone ID for the Route53 record"
}

# Variable to store the record name of the r53 record.
variable "record_name" {
  type        = string
  default     = "rskrishnacloudtech.onlin"
  description = "The record name for the Route53 record"
}
