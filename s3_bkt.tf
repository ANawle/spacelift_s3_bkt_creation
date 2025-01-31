resource "aws_s3_bucket" "sbucket" {
  bucket = "AVbkt"
  acl    = "public"
 
  # Other S3 settings...
}
 
resource "aws_s3_bucket_object" "newobject" {
  bucket = aws_s3_bucket.sbucket.bucket
  key    = "example-key"
  source = "myfile.txt"
  acl    = "public"
}
 
