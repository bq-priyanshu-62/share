module "accepter_vpc" {
  source              = "./modules/module_aws_vpc"
  region              = var.accepter_region
  vpc_cidr            = var.accepter_cidr
  public_subnet_cidr  = var.public_subnet_cidr_accepter
  private_subnet_cidr = var.private_subnet_cidr_accepter
  name                = var.accepter_name
}

module "requester_vpc" {
  source              = "./modules/module_aws_vpc"
  region              = var.requester_region
  vpc_cidr            = var.requester_cidr
  public_subnet_cidr  = var.public_subnet_cidr_requester
  private_subnet_cidr = var.private_subnet_cidr_requester
  name                = var.requester_name
}

module "accepter-instance" {
  source           = "./modules/module_aws_instance"
  ami              = data.aws_ami.accepter_ami_ubuntu.id
  instance_type    = var.instance_type
  public_subnet_id = module.accepter_vpc.public_subnet_id
  name             = var.accepter_name_instance
  parent_vpc_id    = module.accepter_vpc.vpc_id
  region           = var.accepter_region
}

module "requester-instance" {
  source           = "./modules/module_aws_instance"
  ami              = data.aws_ami.requester_ami_ubuntu.id
  instance_type    = var.instance_type
  public_subnet_id = module.requester_vpc.public_subnet_id
  name             = var.requester_name_instance
  parent_vpc_id    = module.requester_vpc.vpc_id
  region           = var.requester_region
}

module "vpc-peering" {
  source                           = "./modules/module_vpc_peering"
  accepter_vpc_id                  = module.accepter_vpc.vpc_id
  requester_vpc_id                 = module.requester_vpc.vpc_id
  accepter_cidr                    = var.accepter_cidr
  requester_cidr                   = var.requester_cidr
  accepter_region                  = var.accepter_region
  requester_region                 = var.requester_region
  accepter_private_route_table_id  = module.accepter_vpc.private_route_table_id
  accepter_public_route_table_id   = module.accepter_vpc.public_route_table_id
  requester_private_route_table_id = module.requester_vpc.private_route_table_id
  requester_public_route_table_id  = module.requester_vpc.public_route_table_id
}
