resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.my-bucket.id
  policy = jsonencode(
      {
          Id        = "Policy1625379254158"
          Statement = [
              {
                  Action    = "s3:GetObject"
                  Effect    = "Allow"
                  Principal = "*"
                  Sid       = "Stmt1625379249658"
                  Resource = "${aws_s3_bucket.my-bucket.arn}/*"
              },
          ]
          Version   = "2012-10-17"
      }
  )
}
