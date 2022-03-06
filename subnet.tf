resource "aws_subnet" "public1" {
  vpc_id             = aws_vpc.main.id
  cidr_block         = var.pub1cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = var.pub1
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pub2cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = var.pub2
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.priv1cidr

  tags = {
    Name = var.priv1
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.priv2cidr

  tags = {
    Name = var.priv2
  }
}
