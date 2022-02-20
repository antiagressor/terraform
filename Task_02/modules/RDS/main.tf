resource "aws_db_instance" "default" {
  allocated_storage      = 10
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  db_subnet_group_name   = var.db_subnet_group_name
  identifier             = var.db_identifier
  vpc_security_group_ids = var.vpc_security_group
}
