output "instance_ids" {
  value = aws_instance.myapp_server[*].id
}

output "public_ips" {
  value = aws_instance.myapp_server[*].public_ip
}

