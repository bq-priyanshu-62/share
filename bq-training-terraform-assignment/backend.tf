terraform {
  backend "s3" {
    bucket  = "bq-training-bucket-for-backend"
    key     = "dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    dynamodb_table = "table-for-backend"
  }
}