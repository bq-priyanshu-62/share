# AWS Regions
variable "accepter_region" {
  description = "The region of the accepter VPC"
  type        = string
  default     = "us-west-1"
}

variable "requester_region" {
  description = "The region of the requester VPC"
  type        = string
  default     = "us-east-1"
}




# CIDR Blocks for VPCs and Subnets
variable "accepter_cidr" {
  description = "The CIDR block for the accepter VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "requester_cidr" {
  description = "The CIDR block for the requester VPC"
  type        = string
  default     = "193.0.0.0/16"
}

variable "public_subnet_cidr_accepter" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.2.0/25"
}

variable "private_subnet_cidr_accepter" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.1.0/25"
}

variable "public_subnet_cidr_requester" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "193.0.2.0/25"
}

variable "private_subnet_cidr_requester" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "193.0.1.0/25"
}



# Instance Details
variable "ami_accepter_region" {
  description = "AMI ID for the accepter region"
  type        = string
  default     = "ami-0e443b903466f6804"
}

variable "ami_requester_region" {
  description = "AMI ID for the requester region"
  type        = string
  default     = "ami-053a45fff0a704a47"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "accepter_name_instance" {
  description = "name of the instance"
  type        = string
  default     = "accepter-instance"
}

variable "requester_name_instance" {
  description = "name of the instance"
  type        = string
  default     = "requester-instance"
}


# VPC Names
variable "requester_name" {
  description = "Name of the VPC"
  type        = string
  default     = "REQUESTER_VPC"
}

variable "accepter_name" {
  description = "Name of the VPC"
  type        = string
  default     = "ACCEPTER_VPC"
}



# Security Group
variable "security_group_id" {
  description = "Security group ID to be applied to the instances"
  type        = list(string)
  default     = []
}




# # Route Table IDs
# variable "requester_private_route_table_id" {
#   description = "Private route table ID for the requester VPC"
#   type        = string
# }

# variable "requester_public_route_table_id" {
#   description = "Public route table ID for the requester VPC"
#   type        = string
# }

# variable "accepter_private_route_table_id" {
#   description = "Private route table ID for the accepter VPC"
#   type        = string
# }

# variable "accepter_public_route_table_id" {
#   description = "Public route table ID for the accepter VPC"
#   type        = string
# }

