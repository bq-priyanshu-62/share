resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.VPC1-TERRAFORM.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
        Name = "TERRAFORM-PUBLIC-SUBNET"
    }
}
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.VPC1-TERRAFORM.id
  cidr_block = var.private_subnet_cidr
  tags = {
        Name = "TERRAFORM-PRIVATE-SUBNET"
    }
}