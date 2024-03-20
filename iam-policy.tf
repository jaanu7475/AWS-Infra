resource "aws_iam_role_policy_attachment" "example_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = aws_iam_role.infra_role.name
}
