variable "region_map" {
  type = map(string)
  default = {
    "us-east-1" = "ami-123"
    "us-west-1" = "ami-345"
  }
}


# to get the ami id , corresponding to region we need to use
# var.region_map["us-east-1] which will give output = ami-1234