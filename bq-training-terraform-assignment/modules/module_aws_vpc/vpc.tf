resource "aws_vpc" "VPC1-TERRAFORM" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.name
  }
}








