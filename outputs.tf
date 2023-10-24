output "instance_ids" {
  description = "The instance ids of the project"
  value       = module.ec2_instance_mod.instance_ids
}

output "public_ip" {
  description = "The public ips of th project"
  value       = module.ec2_instance_mod.public_ips
}