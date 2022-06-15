resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.my-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}