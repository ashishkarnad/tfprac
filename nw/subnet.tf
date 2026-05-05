resource "aws_subnet" "pvt" {
    vpc_id = var.vpc_id
    cidr_block = cidrsubnet(var.base_cidr, 8, 1)
    tags = {
        Name = "name"
    }
}

resource "aws_subnet" "public" {
    vpc_id = var.vpc_id
    cidr_block = cidrsubnet(var.base_cidr, 8, 2)
    tags = {
        Name = "publicsubnet"
    }
}