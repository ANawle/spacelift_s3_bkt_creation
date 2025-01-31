provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "Avinash!@#$"  # Replace with a unique bucket name
  acl    = "private"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }
}
