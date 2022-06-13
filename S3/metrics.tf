resource "aws_s3_bucket_metric" "my-bucket-metrics" {
  bucket = aws_s3_bucket.my-bucket.bucket
  name   = "ImportantDocuments"

  filter {
    prefix = "documents/"

    tags = {
      priority = "high"
      class    = "blue"
    }
  }
}