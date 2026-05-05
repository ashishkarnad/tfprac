/*
output "temp_vpc_id" {
  value       = aws_vpc.temp.id
  description = "Value of vpc"
}

output "temp_igw_id" {
  value       = aws_internet_gateway.igw.id
  description = "value of IGW"

}

output "temp_egw_id" {
  value = aws_egress_only_internet_gateway.egw.id

}

output "firstfile" {
  description = "value of the first filename"
  value       = local_file.config_file[0].filename
}

output "vpc_cidr" {
  value = aws_vpc.temp.cidr_block
}


*/