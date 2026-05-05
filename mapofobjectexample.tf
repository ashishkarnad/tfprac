variable "map_region" {
  type = map(object({
    instance_type = string
    ami           = string
    ebs_optimized = bool
  }))

  default = {
    "us-east-1" = {
      "instance_type" = "t2.micro"
      "ami"           = "ami-3333"
      "ebs_optimized" = "true"
    }
    "us-west-1" = {
      "instance_type" = "t2.micro"
      "ami"           = "ami-4444"
      "ebs_optimized" = "true"
    }
  }
}