output "app_server_public_ip" {
  description = "Public IP address of the app server"
  value       = aws_instance.app_server.public_ip
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "ssh_command" {
  description = "Command to SSH into the public instance"
  value       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.app_server.public_ip}"
}
