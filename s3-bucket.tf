resource "random_string" "unique_suffix" {
  length  = 8
  special = false
}

resource "random_id" "uuid" {
  byte_length = 8
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "cba-jenkins-bucket-eu-west-2"
  acl    = "private"
}

