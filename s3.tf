/*resource "aws_s3_bucket" "s3_bucket" {
  bucket = "s3-tf-state-terrafrom-bucket02"
}*/


resource "aws_s3_bucket" "s3_bucket" {
  bucket_prefix = var.bucket_prefix
}