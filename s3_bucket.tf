provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "jenkins_github_integration_bucket" {
  bucket = "jenkins-github-integration-${random_id.bucket_suffix.hex}"
  acl    = "private"

  tags = {
    Name        = "JenkinsGitHubIntegration"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}
