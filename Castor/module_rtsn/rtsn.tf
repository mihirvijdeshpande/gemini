resource "aws_route_table_association" "rt_sn" {
  subnet_id      = var.sn_id
  route_table_id = var.rt_id
}
