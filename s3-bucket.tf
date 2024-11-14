provider "aws" {
  region = "eu-west-2"  # Change to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket"  # Ensure this is a globally unique name
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"  # Set the ACL to private
