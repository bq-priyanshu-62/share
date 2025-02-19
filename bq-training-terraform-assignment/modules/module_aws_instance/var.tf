variable "ami" {
  description = "ami id"
  default     = "ami-053a45fff0a704a47"
}
variable "instance_type" {
  description = "instance type"
  default     = "t2.micro"
}
variable "public_subnet_id" {
  description = "public subnet id"
}
variable "name" {
  description = "Name of instance"
  default     = "BQ-INSTANCE-TERRAFORM"
}
variable "parent_vpc_id" {
  description = "parent vpc id"
}
variable "region" {
  description = "region for instance"
  default     = "us-east-1"
}