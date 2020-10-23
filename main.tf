module "ec2"{
  source  = "./module_ec2"
  aws_ami = var.ec2_aws_ami
  instance_type = var.ec2_instance_type
}
module "rds"{
  source  = "./module_rds"
  name = var.rds_name
  db_subnet_group_name = var.rds_db_subnet_group_name
  allocated_storage = var.rds_allocated_storage
  engine = var.rds_engine
  engine_version = var.rds_engine_version
  instance_class = var.rds_instance_class
  username = var.rds_username
  password = var.rds_password
  parameter_group_name = var.rds_parameter_group_name
  final_snapshot_identifier = var.rds_final_snapshot_identifier
  skip_final_snapshot = var.rds_skip_final_snapshot
  storage_type = var.rds_storage_type
}
module "vpc" {
    source = "./module_vpc"
    cidr_block = var.vpc_cidr_block    
}
module "gateway" {
    source = "./module_gw"
    vpc_name = module.vpc.vpc_id
}
module "route_table" {
    source = "./module_rt"
    vpc_id_gw = module.vpc.vpc_id
    rt_cidr = var.rt_cidr_block
    rt_gateway_id = module.gateway.gw_id
}