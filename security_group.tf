resource "aws_security_group" "GOV-general-SG" {
  name   = "connection_from_OTT"
  vpc_id = "${aws_vpc.GOV-VPC.id}"

  ingress {
    description = "Home Ottawa"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["174.112.132.193/32", "69.165.158.62/32", "10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "GOV-General-SG"
  }
}
