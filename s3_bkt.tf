provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "mazibkt"  # Replace with a unique bucket name

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"
}
