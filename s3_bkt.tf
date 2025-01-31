provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

# S3 Bucket Creation without acl argument
resource "aws_s3_bucket" "sbucket" {
  bucket = "AVbkt"
  # Removed acl argument as it's deprecated
}

# Explicitly setting the ACL using aws_s3_bucket_acl
resource "aws_s3_bucket_acl" "sbucket_acl" {
  bucket = aws_s3_bucket.sbucket.bucket
  acl    = "public-read"  # Set the ACL to public-read (this is typically the intended behavior for public access)
}

# Using aws_s3_object instead of aws_s3_bucket_object
resource "aws_s3_object" "newobject" {
  bucket = aws_s3_bucket.sbucket.bucket
  key    = "example-key"
  source = "myfile.txt"
  acl    = "public-read"  # Set the ACL to public-read (this allows public access to the object)
}
