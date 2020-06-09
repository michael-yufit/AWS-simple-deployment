#######################################################################

#  Instances in ca-central-1

#######################################################################

resource "aws_instance" "W_2008" {
  ami                    = "ami-e8bb078c"
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
  ami                    = "ami-e8bb078c"
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
  ami                    = "ami-0f75c2980c6a5851d"
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
  ami                    = "ami-0f75c2980c6a5851d"
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
  ami                    = "ami-09ca8bd0cc0115bed"
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
  ami                    = "ami-083db6415ff4ab7b1"
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

