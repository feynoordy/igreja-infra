output "instance_public_ip" {
  description = "IP público da EC2"
  value       = aws_instance.k8s_dev.public_ip
}

output "instance_id" {
  description = "ID da instância"
  value       = aws_instance.k8s_dev.id
}
