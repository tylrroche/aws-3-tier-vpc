resource "aws_security_group" "webapp" {
  name        = var.web_sg
  description = var.desc
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = var.ingressdesc
    from_port        = var.webport
    to_port          = var.webport
    protocol         = var.proto
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = var.p80desc
    from_port        = var.p80
    to_port          = var.p80
    protocol         = var.proto
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.web_sg
  }
}
