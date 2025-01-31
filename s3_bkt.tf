provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

resource "aws_s3_bucket" "sbucket" {
  bucket = "AVbkt"

  # Allow public access by disabling BlockPublicAcls
  block_public_access {
    block_public_acls = false
    block_public_policy = false
  }
}

resource "aws_s3_bucket_acl" "sbucket_acl" {
  bucket = aws_s3_bucket.sbucket.bucket
  acl    = "public-read"  # Allow public-read ACL for the bucket
}

resource "aws_s3_object" "newobject" {
  bucket = aws_s3_bucket.sbucket.bucket
  key    = "example-key"  # Example key for the object
  acl    = "public-read"  # Allow public-read ACL for the object
}
