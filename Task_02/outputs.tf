output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "db_instance_id" {
  value = module.rds.db_instance_id
}

output "db_endpoint_id" {
  value = module.rds.db_endpoint_id
}