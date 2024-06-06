provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "f8e28cfa1fb41abecac315e5aa59cdf9555d5fe3"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-06 23:25:37"
    git_last_modified_by = "32913487+pitfunie@users.noreply.github.com"
    git_modifiers        = "32913487+pitfunie"
    git_org              = "pitfunie"
    git_repo             = "DevSecOps"
    yor_name             = "dev_s3"
    yor_trace            = "8588b7cf-14a2-4aad-bad0-161f15313346"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

