provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

resource "aws_s3_bucket" "abucket" {
  bucket = "bhadhlya"  # Replace with your unique bucket name
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }

  block_public_acls = false
  block_public_policy = false
}

resource "aws_s3_bucket_acl" "abucket_acl" {
  bucket = aws_s3_bucket.abucket.bucket
  acl    = "private"
}

resource "aws_s3_bucket_object" "newobject" {
  bucket = aws_s3_bucket.abucket.bucket  # Reference the correct bucket resource
  key    = "new-object.txt"
  source = "path/to/local/file.txt"
  acl    = "private"
}
