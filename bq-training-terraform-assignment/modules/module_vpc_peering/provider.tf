provider "aws" {
  region = var.requester_region
}
provider "aws" {
  alias  = "accepter"
  region = var.accepter_region
}