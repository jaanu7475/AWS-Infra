terraform {
  backend "s3" {
    bucket = "tf-state-terrafrom-bucket"
    region = "us-east-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-table" 
  }
}