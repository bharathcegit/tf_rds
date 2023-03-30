resource "aws_db_subnet_group" "mydb_subnet_group" {
  name          = var.name
  subnet_ids    = var.subnet_ids
  }


resource "aws_db_instance" "mydb" {
  allocated_storage    = 10
  storage_type         = var.storage_type
  storage_encrypted    = var.storage_encrypted
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  db_subnet_group_name = var.db_subnet_group_name
  publicly_accessible  = var.publicly_accessible
}