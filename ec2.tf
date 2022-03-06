data "template_file" "ec2_user_data" {
  template = file("${path.module}/bootstrap.sh")
}

resource "aws_instance" "web1" {
  ami                         = var.ami
  instance_type               = var.vmsize
  user_data                   = data.template_file.ec2_user_data.template
  monitoring                  = true
  subnet_id                   = aws_subnet.public1.id
  vpc_security_group_ids      = [aws_security_group.webapp.id]
  associate_public_ip_address = true

  tags = {
    Name = var.vmtag
  }
}

resource "aws_instance" "web2" {
  ami                         = var.ami
  instance_type               = var.vmsize
  user_data                   = data.template_file.ec2_user_data.template
  monitoring                  = true
  subnet_id                   = aws_subnet.public2.id
  vpc_security_group_ids      = [aws_security_group.webapp.id]
  associate_public_ip_address = true

  tags = {
    Name = var.vmtag
  }
}
