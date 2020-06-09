resource "aws_internet_gateway" "GOV-IGW" {
  vpc_id = "${aws_vpc.GOV-VPC.id}"

  tags = {
    Name = "GOV-IGW"
  }
}
