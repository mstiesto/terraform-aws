resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/users/"
}
resource "aws_iam_group" "admins" {
  name = "admins"
  path = "/users/"
}