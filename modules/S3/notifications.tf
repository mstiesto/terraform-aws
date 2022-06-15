resource "aws_s3_bucket_notification" "bucket-notification" {
  bucket = aws_s3_bucket.my-bucket.id

  topic {
    topic_arn     = aws_sns_topic.topic.arn
    events        = ["s3:ObjectCreated:*"]
    filter_suffix = ".log"
  }
}