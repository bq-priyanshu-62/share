# provider "aws" {
#   region = "us-east1"
# }
resource "aws_nat_gateway" "nat-01" {
  allocation_id = aws_eip.eip-01.id
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "TERRAFORM-NAT-GATEWAY"
  }
}
resource "aws_eip" "eip-01" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.gateway-01]
}