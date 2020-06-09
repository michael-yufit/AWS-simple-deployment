resource "aws_instance" "W_2008" {
  ami                    = "ami-39ec9959"
  instance_type          = "t2.medium"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  #iam_instance_profile   = "${aws_iam_instance_profile.SSM_profile.name}"

  tags = {
    Name    = "Windows Server 2008"
    Company = "Apple"
  }
}

resource "aws_instance" "W_2008_NoRole" {
  ami                    = "ami-39ec9959"
  instance_type          = "t2.medium"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  #iam_instance_profile   = "${aws_iam_instance_profile.SSM_profile.name}"

  tags = {
    Name    = "W2K8 NoRole"
    Company = "Apple"
  }
}


resource "aws_instance" "AMZN2_NoRole" {
  ami                    = "ami-06fcc1f0bc2c8943f"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  #iam_instance_profile   = "${aws_iam_instance_profile.SSM_profile.name}"

  tags = {
    Name    = "AMZN2 NoRole"
    Company = "Apple"
  }
}


resource "aws_instance" "Amazon-linux2" {
  ami                    = "ami-06fcc1f0bc2c8943f"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  iam_instance_profile   = "${aws_iam_instance_profile.SSM_profile.name}"

  tags = {
    Name    = "AMZN2"
    Company = "Apple"
  }
}

resource "aws_instance" "ubuntu" {
  ami                    = "ami-0f56279347d2fa43e"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  #iam_instance_profile = "${aws_iam_instance_profile.SSM_profile.name}"

  tags = {
    Name    = "ubuntu server"
    Company = "Apple"
    Green   = "Yes"
  }
}

resource "aws_instance" "W_2016" {
  ami                    = "ami-06894046d41571622"
  instance_type          = "t2.large"
  subnet_id              = "${aws_subnet.GOV-public-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.GOV-general-SG.id}"]
  key_name               = "SSC"
  iam_instance_profile   = "${aws_iam_instance_profile.S3_profile.name}"

  tags = {
    Name    = "Windows Server 2016"
    Company = "Apple"
  }
}

