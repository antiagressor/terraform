output "db_instance_id" {
  value = aws_db_instance.default.id
}

output "db_endpoint_id" {
  value = aws_db_instance.default.endpoint
}