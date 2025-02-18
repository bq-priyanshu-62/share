resource "aws_route_table" "public" {
  vpc_id = aws_vpc.VPC1-TERRAFORM.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway-01.id
    }

}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.VPC1-TERRAFORM.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-01.id
    }
}
resource "aws_route_table_association" "public-association" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private-association" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}