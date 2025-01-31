resource "aws_s3_bucket" "abucket" {
  bucket = "avibkt"
  acl    = "private"
 
  # Other S3 settings...
}
 
resource "aws_s3_bucket_object" "newobject" {
  bucket = aws_s3_bucket.sbucket.bucket
  key    = "example-key1"
  source = "myfile1.txt"
  acl    = "private"
}
 
