# Collecting the image id value and storing it.

output "image_id" {
  value = data.aws_ami.ami_id.id
}

# Collecing the default vpc id and storing it.
output "def_vpc_id" {
  value = data.aws_vpc.def_vpc_id.id
}
