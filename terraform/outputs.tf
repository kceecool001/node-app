output "aws_instance_public_ip" {
    description = "Public IP of the deployed EC2 instance"
    value       = aws_instance.server.public_ip
    sensitive   = true
}