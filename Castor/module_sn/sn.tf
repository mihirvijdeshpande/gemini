resource "aws_subnet" "subnet-1" {
  vpc_id            = var.vpc_id_sn
  cidr_block        = var.sn_cidr
  availability_zone = var.az
}
