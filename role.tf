resource "aws_iam_role" "SSMagentRole" {
  name = "SSM-Agent-Role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": "sts:AssumeRole",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Effect": "Allow",
          "Sid": ""
        }
    ]
}
EOF
}


resource "aws_iam_role_policy_attachment" "SSM-attach" {
  role = "${aws_iam_role.SSMagentRole.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
}


resource "aws_iam_role_policy_attachment" "CW-attach" {
  role = "${aws_iam_role.SSMagentRole.name}"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}


resource "aws_iam_role" "S3_Role" {
  name = "S3-Access-Role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": "sts:AssumeRole",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Effect": "Allow",
          "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "S3-attach" {
  role       = "${aws_iam_role.S3_Role.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
