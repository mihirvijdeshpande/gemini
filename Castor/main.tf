module "ec2" {
  source        = "./module_ec2"
  aws_ami       = var.ec2_aws_ami
  instance_type = var.ec2_instance_type
}
module "rds" {
  source                    = "./module_rds"
  name                      = var.rds_name
  db_subnet_group_name      = var.rds_db_subnet_group_name
  allocated_storage         = var.rds_allocated_storage
  engine                    = var.rds_engine
  engine_version            = var.rds_engine_version
  instance_class            = var.rds_instance_class
  username                  = var.rds_username
  password                  = var.rds_password
  parameter_group_name      = var.rds_parameter_group_name
  final_snapshot_identifier = var.rds_final_snapshot_identifier
  skip_final_snapshot       = var.rds_skip_final_snapshot
  storage_type              = var.rds_storage_type
}
module "vpc" {
  source     = "./module_vpc"
  cidr_block = var.vpc_cidr_block
}
module "gateway" {
  source   = "./module_gw"
  vpc_name = module.vpc.vpc_id
}
module "route_table" {
  source        = "./module_rt"
  vpc_id_gw     = module.vpc.vpc_id
  rt_cidr       = var.rt_cidr_block
  rt_gateway_id = module.gateway.gw_id
}
module "subnet" {
  source    = "./module_sn"
  sn_cidr   = var.sn_cidr_block
  az        = var.sn_az
  vpc_id_sn = module.vpc.vpc_id
}
module "rt_sn" {
  source = "./module_rtsn"
  sn_id  = module.subnet.sn_id
  rt_id  = module.route_table.rt_id
}
module "sg" {
  source         = "./module_sg"
  name           = var.sg_name
  vpc_id         = module.vpc.vpc_id
  https_port     = var.sg_https_port
  http_port      = var.sg_http_port
  ssh_port       = var.sg_ssh_port
  in_protocol    = var.sg_in_protocol
  out_protocol   = var.sg_out_protocol
  in_cidr_block  = var.sg_in_cidr_block
  out_cidr_block = var.sg_out_cidr_block
}
