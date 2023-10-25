resource "aws_db_instance" "my_database" {
  allocated_storage    = var.db_total_storage
  db_name              = var.proj_db_name
  engine               = var.db_engine_used
  engine_version       = var.db_engine_version
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true
}