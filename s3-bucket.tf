resource "random_string" "unique_suffix" {
  length  = 8
  special = false
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-buckett-${random_string.unique_suffix.result}"
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"
}
