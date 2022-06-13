resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-bucket-for-shm"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}