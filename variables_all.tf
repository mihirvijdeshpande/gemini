variable "ec2_aws_ami"{
  description = "EC2 AMI to use"
}
variable "ec2_instance_type"{
  description = "Type of instance to use"
}
variable "rds_name" {
	description = "RDS Name for identification"
}
variable "rds_db_subnet_group_name"{
  description = "Name of the subnet group"
}
variable "rds_allocated_storage"{
  description = "Storage allocated to RDS instance"
}
variable "rds_storage_type"{
  description = "Storage type allocated to RDS instance"
}
variable "rds_engine"{
  description = "Db Enginer for the instance"
}
variable "rds_engine_version"{
  description = "DB Enginer Version"
}
variable "rds_instance_class"{
  description = "Class of the RDS DB instance"
}
variable "rds_username"{
  description = "Username for the RDS DB"
}
variable "rds_password"{
  description = "Password of the RDS admin user"
}
variable "rds_parameter_group_name"{
  description = "name of the parameter group used by the DB instance"
}
variable "rds_final_snapshot_identifier"{
  description = "Name of the final snapshot taken while terminating DB instance"
}
variable "rds_skip_final_snapshot"{
  description = "To save a final snapshot while termintation or not"
}
variable "vpc_cidr_block"{
  description = "VPC CIDR Block"
}
variable "rt_cidr_block"{
  description = "Route Table CIDR Block"
}