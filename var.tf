variable "vpc_base_cidr" {
  default = "10.0.0.0/16"
}

variable "amilist" {
  type    = list(string)
  default = ["ami-123", "ami-456", "ami-789"]
}

variable "envs" {
  type = map(string)
  default = {
    "Dev"  = "Development"
    "QA"   = "QA-Testing"
    "UAT"  = "UAT"
    "Prod" = "Production"

  }
}

variable "create_file" {
  type    = bool
  default = true
}

variable "read_me" {
  type    = bool
  default = true
}

variable "dep_env" {
  type        = string
  description = "the Deployment environment"
  default     = "dev"
}

