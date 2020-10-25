ec2_aws_ami = "ami-0010d386b82bc06f0"
ec2_instance_type = "t2.micro"

rds_name = "mydb"
rds_db_subnet_group_name = "db-subnet-group"
rds_allocated_storage = "20"
rds_storage_type = "gp2"
rds_engine = "mysql"
rds_engine_version = "5.7.22"
rds_instance_class = "db.t2.micro"
rds_username = "admin"
rds_password = "Redhat12#"
rds_parameter_group_name = "default.mysql5.7"
rds_final_snapshot_identifier = "rds-bkp"
rds_skip_final_snapshot = "true"

vpc_cidr_block = "10.0.0.0/16"
rt_cidr_block = "0.0.0.0/0"
sn_az = "us-east-2a"
sn_cidr_block = "10.0.1.0/24"

sg_name = "allow_web_traffic"
sg_https_port = 443
sg_http_port = 80
sg_ssh_port = 22
sg_in_protocol = "tcp"
sg_out_protocol = "-1"
sg_in_cidr_block = "0.0.0.0/0"
sg_out_cidr_block = "0.0.0.0/0"