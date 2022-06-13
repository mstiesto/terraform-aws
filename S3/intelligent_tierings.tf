resource "aws_s3_bucket_intelligent_tiering_configuration" "entire-bucket" {
  bucket = aws_s3_bucket.my-bucket.bucket
  name   = "EntireBucket"

  tiering {
    access_tier = "DEEP_ARCHIVE_ACCESS"
    days        = 180
  }
  tiering {
    access_tier = "ARCHIVE_ACCESS"
    days        = 125
  }
}