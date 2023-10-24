provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "state_lock" {
  name = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "project_s3_bucket" {
  bucket = var.my_bucket_name
}