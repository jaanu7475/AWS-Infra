resource "aws_iam_instance_profile" "demo_profile" {
  name = "infra_profile"
  role = aws_iam_role.infra_role.name
}