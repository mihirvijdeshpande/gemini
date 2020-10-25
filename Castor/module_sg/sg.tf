resource "aws_security_group" "allow_web" {
  name   = var.name
  vpc_id = var.vpc_id
  ingress {
    description = "HTTPS"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = var.in_protocol
    cidr_blocks = [var.in_cidr_block]
  }
  ingress {
    description = "HTTP"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.in_protocol
    cidr_blocks = [var.in_cidr_block]
  }
  ingress {
    description = "SSH"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.in_protocol
    cidr_blocks = [var.in_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.out_protocol
    cidr_blocks = [var.out_cidr_block]
  }
}
