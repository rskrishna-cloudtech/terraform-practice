# Output value to store the private ip of the instance.
output "private_ip" {
  value = aws_instance.ec2_instance.private_ip
}

# Output value to store the public ip of the instance.
output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

# Output value to store the instnace id of the instance.
output "instance_id" {
  value = aws_instance.ec2_instance.id
}
