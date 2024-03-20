resource "aws_iam_instance_profile" "demo_profile" {
  name = "demo_profile"
  role = aws_iam_role.demo_role.name
}