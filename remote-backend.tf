terraform {
  backend "s3" {
    bucket = "s3-tf-state-terraform-bucket06"
    region = "us-east-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-db-table03"
  }
}