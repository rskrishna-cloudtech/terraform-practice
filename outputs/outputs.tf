# This is used to store the public IP of the instance created.
output "instance_public_ip" {
  value       = aws_instance.db_instance.public_ip
  description = "The public IP address of the EC2 instance"
}
