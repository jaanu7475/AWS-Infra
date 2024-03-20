resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.ssm_role.name
  for_each = toset([
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess", 
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  ])

  policy_arn = each.value
}

