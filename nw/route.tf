resource "aws_route_table" "pubrt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = var.egw_id
  }

  tags = {
    Name = "pubrt"
  }
}