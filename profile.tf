resource "aws_iam_instance_profile" "SSM_profile" {
  name = "SSM_profile"
  role = "${aws_iam_role.SSMagentRole.name}"
}


resource "aws_iam_instance_profile" "S3_profile" {
  name = "S3_profile"
  role = "${aws_iam_role.S3_Role.name}"
}
