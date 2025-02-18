resource "tls_private_key" "bq-key" {
  algorithm = "RSA"
  rsa_bits = 2048
}

resource "aws_key_pair" "key_value" {
  key_name   = "bq-key"
  public_key = tls_private_key.bq-key.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.bq-key.private_key_pem
  filename = "${path.module}/bq-key.pem"
}