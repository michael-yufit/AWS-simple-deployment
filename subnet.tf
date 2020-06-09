resource "aws_subnet" "GOV-public-subnet" {
  vpc_id                  = "${aws_vpc.GOV-VPC.id}"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ca-central-1a"

  tags = {
    Name = "GOV-public-subnet"
  }
}
