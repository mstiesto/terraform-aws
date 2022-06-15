resource "aws_s3_bucket_logging" "my-bucket-logging" {
  bucket = aws_s3_bucket.my-bucket.id

  target_bucket = aws_s3_bucket.my-bucket.id
  target_prefix = "log/"
}