provider "aws" {
  region = "ap-south-1"  # Adjust your region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "hamribkt"  # Replace with your unique bucket name
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Development"
  }

  block_public_acls = false  # Allow ACLs on the bucket
  block_public_policy = false  # Allow public bucket policies if needed
}
