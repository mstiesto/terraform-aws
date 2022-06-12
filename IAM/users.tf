resource "aws_iam_user" "developers" {
  count = "${length(var.developers)}"
  name = "${element(var.developers,count.index)}"
  path = "/"
}
resource "aws_iam_user" "admins" {
  count = "${length(var.admins)}"
  name = "${element(var.admins,count.index)}"
  path = "/"
}
resource "aws_iam_access_key" "developers_access_key" {
  count = length(var.developers)
  user = element(var.developers,count.index)
}
resource "aws_iam_access_key" "admins_access_key" {
  count = length(var.admins)
  user = element(var.admins,count.index)
}