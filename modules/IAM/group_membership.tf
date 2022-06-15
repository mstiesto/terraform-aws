resource "aws_iam_group_membership" "developers" {
  name = "developers-group-membership"
  users   = var.developers
  group = aws_iam_group.developers.name
}
resource "aws_iam_group_membership" "admins" {
  name = "admins-group-membership"
  users   = var.admins
  group = aws_iam_group.admins.name
}