## Requirements

No requirements.

## Providers

No providers.

## Modules

The following Modules are called:

### <a name="module_accepter-instance"></a> [accepter-instance](#module\_accepter-instance)

Source: ./modules/module_aws_instance

Version:

### <a name="module_accepter_vpc"></a> [accepter\_vpc](#module\_accepter\_vpc)

Source: ./modules/module_aws_vpc

Version:

### <a name="module_requester-instance"></a> [requester-instance](#module\_requester-instance)

Source: ./modules/module_aws_instance

Version:

### <a name="module_requester_vpc"></a> [requester\_vpc](#module\_requester\_vpc)

Source: ./modules/module_aws_vpc

Version:

### <a name="module_vpc-peering"></a> [vpc-peering](#module\_vpc-peering)

Source: ./modules/module_vpc_peering

Version:

## Resources

No resources.

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_accepter_cidr"></a> [accepter\_cidr](#input\_accepter\_cidr)

Description: The CIDR block for the accepter VPC

Type: `string`

Default: `"10.0.0.0/16"`

### <a name="input_accepter_name"></a> [accepter\_name](#input\_accepter\_name)

Description: Name of the VPC

Type: `string`

Default: `"ACCEPTER_VPC"`

### <a name="input_accepter_name_instance"></a> [accepter\_name\_instance](#input\_accepter\_name\_instance)

Description: name of the instance

Type: `string`

Default: `"accepter-instance"`

### <a name="input_accepter_region"></a> [accepter\_region](#input\_accepter\_region)

Description: The region of the accepter VPC

Type: `string`

Default: `"us-west-1"`

### <a name="input_ami_accepter_region"></a> [ami\_accepter\_region](#input\_ami\_accepter\_region)

Description: AMI ID for the accepter region

Type: `string`

Default: `"ami-0e443b903466f6804"`

### <a name="input_ami_requester_region"></a> [ami\_requester\_region](#input\_ami\_requester\_region)

Description: AMI ID for the requester region

Type: `string`

Default: `"ami-053a45fff0a704a47"`

### <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type)

Description: Type of EC2 instance

Type: `string`

Default: `"t2.micro"`

### <a name="input_private_subnet_cidr_accepter"></a> [private\_subnet\_cidr\_accepter](#input\_private\_subnet\_cidr\_accepter)

Description: The CIDR block for the private subnet

Type: `string`

Default: `"10.0.1.0/25"`

### <a name="input_private_subnet_cidr_requester"></a> [private\_subnet\_cidr\_requester](#input\_private\_subnet\_cidr\_requester)

Description: The CIDR block for the private subnet

Type: `string`

Default: `"193.0.1.0/25"`

### <a name="input_public_subnet_cidr_accepter"></a> [public\_subnet\_cidr\_accepter](#input\_public\_subnet\_cidr\_accepter)

Description: The CIDR block for the public subnet

Type: `string`

Default: `"10.0.2.0/25"`

### <a name="input_public_subnet_cidr_requester"></a> [public\_subnet\_cidr\_requester](#input\_public\_subnet\_cidr\_requester)

Description: The CIDR block for the public subnet

Type: `string`

Default: `"193.0.2.0/25"`

### <a name="input_requester_cidr"></a> [requester\_cidr](#input\_requester\_cidr)

Description: The CIDR block for the requester VPC

Type: `string`

Default: `"193.0.0.0/16"`

### <a name="input_requester_name"></a> [requester\_name](#input\_requester\_name)

Description: Name of the VPC

Type: `string`

Default: `"REQUESTER_VPC"`

### <a name="input_requester_name_instance"></a> [requester\_name\_instance](#input\_requester\_name\_instance)

Description: name of the instance

Type: `string`

Default: `"requester-instance"`

### <a name="input_requester_region"></a> [requester\_region](#input\_requester\_region)

Description: The region of the requester VPC

Type: `string`

Default: `"us-east-1"`

### <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id)

Description: Security group ID to be applied to the instances

Type: `list(string)`

Default: `[]`

## Outputs

No outputs.
