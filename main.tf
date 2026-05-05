/*
resource "aws_vpc" "temp" {
  cidr_block = var.vpc_base_cidr
  tags = {
    name = "temp"
  }
}


data "aws_availability_zones" "az_avail" {
  state = "available"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.temp.id
}
resource "aws_egress_only_internet_gateway" "egw" {
  vpc_id = aws_vpc.temp.id
}

module "nw_sub_module" {
  source    = "./nw"
  vpc_id    = aws_vpc.temp.id
  igw_id    = aws_internet_gateway.igw.id
  egw_id    = aws_egress_only_internet_gateway.egw.id
  base_cidr = aws_vpc.temp.cidr_block
}
*/