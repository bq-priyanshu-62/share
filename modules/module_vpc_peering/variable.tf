variable "accepter_vpc_id" {
    description = "accepter id"
}
variable "requester_vpc_id" {
    description = "requester id"
}
variable "accepter_public_route_table_id" {
    description = "acceptor public route table id"
}
variable "requester_public_route_table_id" {
    description = "requester public route table id"
}
variable "accepter_private_route_table_id" {
    description = "acceptor private route table id"
}
variable "requester_private_route_table_id" {
    description = "requester private route table id"
}
variable "accepter_cidr" {
    description = "acceptor cidr"   
}
variable "requester_cidr" {
    description = "requester cidr"
}
variable "accepter_region" {
    description = "acceptor region" 
}
variable "requester_region" {
    description = "requester region"
    type=string
}