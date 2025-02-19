data "aws_ami" "requester_ami_ubuntu" {
  most_recent = true
  provider    = aws
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Ubuntu 20.04 LTS
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

data "aws_ami" "accepter_ami_ubuntu" {
  most_recent = true
  provider    = aws.accepter
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Ubuntu 20.04 LTS
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical's official AWS account ID
}
