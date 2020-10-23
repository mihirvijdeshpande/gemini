resource "aws_route_table" "prod-route-table" {
   vpc_id = var.vpc_id_gw

   route {
     cidr_block = var.rt_cidr
     gateway_id = var.rt_gateway_id
   }
}