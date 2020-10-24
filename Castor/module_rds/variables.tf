variable "name" {
  description = "Tag - RDS Name for identification"
}
variable "db_subnet_group_name" {
  description = "Name of the subnet group"
}
variable "allocated_storage" {
  description = "Storage allocated to RDS instance"
}
variable "storage_type" {
  description = "Storage type allocated to RDS instance"
}
variable "engine" {
  description = "Db Enginer for the instance"
}
variable "engine_version" {
  description = "DB Enginer Version"
}
variable "instance_class" {
  description = "Class of the RDS DB instance"
}
variable "username" {
  description = "Username for the RDS DB"
}
variable "password" {
  description = "Password of the RDS admin user"
}
variable "parameter_group_name" {
  description = "name of the parameter group used by the DB instance"
}
variable "final_snapshot_identifier" {
  description = "Name of the final snapshot taken while terminating DB instance"
}
variable "skip_final_snapshot" {
  description = "To save a final snapshot while termintation or not"
}
