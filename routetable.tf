resource "aws_route_table" "pub1rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.alltraffic
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.pub1rt
  }
}

resource "aws_route_table" "priv1rt" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = var.priv1rt
  }
}
