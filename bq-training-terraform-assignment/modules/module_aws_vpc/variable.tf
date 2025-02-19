# locals {
#   region = us-east-1 
#   instance_type = t2.micro
#   vpc_cidr ="10.0.0.0/16"
#   public_subnet_cidr ="10.0.1.0/25"
#   private_subnet_cidr ="10.0.2.0/25"
# }

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
variable "vpc_cidr" {
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  default     = "10.0.1.0/25"
}
variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  default     = "10.0.2.0/25"
}
variable "name" {
  description = "Name of the vpc"
  default     = "BQ-VPC-TERRAFORM"
}
