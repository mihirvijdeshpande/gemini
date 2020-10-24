resource "aws_db_instance" "db" {
  allocated_storage         = var.allocated_storage
  storage_type              = var.storage_type
  engine                    = var.engine
  engine_version            = var.engine_version
  instance_class            = var.instance_class
  name                      = var.name
  username                  = var.username
  password                  = var.password
  parameter_group_name      = var.parameter_group_name
  db_subnet_group_name      = var.db_subnet_group_name
  final_snapshot_identifier = var.final_snapshot_identifier
  skip_final_snapshot       = var.skip_final_snapshot
}
