variable "instance_type" {
  default  = "t2.micro"
  description = "instance type"
}

variable "tag" {
  description = "Tag"
}

variable "owner" {
  description = "Owner tag"
}

variable "key_name" {
  description = "SSH key name"
}

variable "private_key" {
  description = "ssh private key"
}

variable "vpc_id" {
  description = "vpc id"
}

variable "subnet_id" {
  description = "subnet id"
}

variable "vpc_security_group" {
  description = "vpc_security_group"
}