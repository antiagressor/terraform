output "instance_id" {
  value = aws_instance.tf-my-instance.id
}

output "public_ip" {
  value = aws_instance.tf-my-instance.public_ip
}