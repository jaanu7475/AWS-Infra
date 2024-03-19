resource "aws_dynamodb_table" "state-lock" {
  name = "terraform-state-lock-db-table"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}