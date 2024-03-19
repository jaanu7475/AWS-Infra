terraform {
  backend "s3" {
    bucket = "backend002-tf-state-terrafrom-bucket"
    region = "us-east-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-db-table" 
  }
}