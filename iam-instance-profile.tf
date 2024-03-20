resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_infra_profile"
  role = aws_iam_role.ssm_role.name
}