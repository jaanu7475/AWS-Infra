terraform {
  backend "s3" {
    bucket = "s3-tf-state-terrafrom-bucket02"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}