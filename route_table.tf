#resource "aws_route_table" "GOV-RT" {
#  vpc_id = "${aws_vpc.GOV-VPC.id}"

#  route {
#    cidr_block = "0.0.0.0/0"
#    gateway_id = "${aws_internet_gateway.GOV-IGW.id}"
#  }

#  tags = {
#    Name = "GOV-RT"
#  }
#}


resource "aws_default_route_table" "GOV-RT" {
  default_route_table_id = "${aws_vpc.GOV-VPC.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.GOV-IGW.id}"
  }

  tags = {
    Name = "GOV-RT"
  }
}

resource "aws_route_table_association" "GOV-public-attach" {
  subnet_id      = "${aws_subnet.GOV-public-subnet.id}"
  route_table_id = "${aws_default_route_table.GOV-RT.id}"
}
