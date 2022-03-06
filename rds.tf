resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = var.dbengine
  engine_version       = var.e_version
  instance_class       = var.i_class
  db_name              = var.dbname
  username             = var.usrname
  password             = var.pword
  parameter_group_name = var.pg_name
  skip_final_snapshot  = var.skipfs
}
