variable "instance_class" {
  default     = "db.t2.micro"
  description = "instance class"
}

variable "engine" {
  description = "engine"
  default = "mariadb"
}

variable "db_subnet_group_name" {
  description = "subnet_id"
}

variable "db_identifier" {
  description = "db_identifier"
}

variable "db_name" {
  description = "db_name"
}

variable "db_username" {
  description = "db username"
}

variable "db_password" {
  description = "db password"
}

variable "engine_version" {
  description = "engine version"
}

variable "vpc_security_group" {
  description = "vpc_security_group"
}