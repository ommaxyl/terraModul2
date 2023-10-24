resource "random_string" "bucket_name_suffix" {
  length = 4
  special = false
  upper = false
}

resource "aws_s3_bucket" "project_s3_bucket" {
  bucket = "proj_bucket_s3_${random_string.bucket_name_suffix.result}"
}