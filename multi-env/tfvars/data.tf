# Data source to get the ami id.
data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Data source to get the default vpc id in the given region.
data "aws_vpc" "def_vpc_id" {
  default = true
}


# Data source to get the hosted zone id.
data "aws_route53_zone" "hosted_zone_id" {
  name         = "rskrishnacloudtech.online"
  private_zone = false
}
