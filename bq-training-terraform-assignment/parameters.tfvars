accepter_region  = "us-west-1"
requester_region = "us-east-1"

# CIDR Blocks for VPCs and Subnets
accepter_cidr                 = "10.0.0.0/16"
requester_cidr                = "193.0.0.0/16"
public_subnet_cidr_accepter   = "10.0.2.0/25"
private_subnet_cidr_accepter  = "10.0.1.0/25"
public_subnet_cidr_requester  = "193.0.2.0/25"
private_subnet_cidr_requester = "193.0.1.0/25"

# Instance Details
ami_accepter_region     = "ami-0e443b903466f6804"
ami_requester_region    = "ami-053a45fff0a704a47"
instance_type           = "t2.micro"
accepter_name_instance  = "accepter-instance"
requester_name_instance = "requester-instance"

# VPC Names
requester_name = "REQUESTER_VPC"
accepter_name  = "ACCEPTER_VPC"

# Security Group
security_group_id = []