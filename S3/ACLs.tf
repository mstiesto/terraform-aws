resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.my-bucket.id
  acl    = "private"
}