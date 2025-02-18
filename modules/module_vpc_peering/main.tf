resource "aws_vpc_peering_connection" "peering" {
  vpc_id = var.requester_vpc_id  
  peer_vpc_id = var.accepter_vpc_id  
  peer_region = var.accepter_region
}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  provider = aws.accepter
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
  auto_accept = true
}

resource "aws_route" "private_route_to_accepter" {
  route_table_id            = var.requester_private_route_table_id
  destination_cidr_block    =  var.accepter_cidr 
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id  
}
resource "aws_route" "public_route_to_accepter" {
  route_table_id            = var.requester_public_route_table_id
  destination_cidr_block    =  var.accepter_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id  
}
resource "aws_route" "private_route_to_requester" {
  provider = aws.accepter
  route_table_id            = var.accepter_private_route_table_id  
  destination_cidr_block    = var.requester_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id  
}
resource "aws_route" "public_route_to_requester" {
  provider = aws.accepter
  route_table_id            = var.accepter_public_route_table_id  
  destination_cidr_block    =  var.requester_cidr  
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id  
}