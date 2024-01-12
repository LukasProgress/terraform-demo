output "public_dns" {
  value = local.public_dns
}

output "connect_via_ssh" {
  value = "ssh -i ~/.ssh/${module.key_module.key_name} ec2-user@${local.public_dns}"
}

output "external_instance_name" {
  value = data.aws_instance.external_instance.tags["Name"]
}