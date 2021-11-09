resource "aws_db_instance" "rds" {
  allocated_storage = var.storage
  engine            = var.engine
  engine_version    = var.engver
  instance_class    = var.dbsize
  identifier        = var.identifier
  #identifier_prefix = var.identifier_prefix 
  name              = var.dbname
  username          = var.dbusername
  password          = var.dbpswd
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  apply_immediately = var.apply_immediately
  #status               = var.status
}
