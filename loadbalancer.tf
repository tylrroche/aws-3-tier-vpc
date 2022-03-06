resource "aws_lb" "tjlb" {
  name               = var.lbname
  internal           = false
  load_balancer_type = var.lbtype
  security_groups    = [aws_security_group.webapp.id]
  subnets            = [aws_subnet.public1.id, aws_subnet.public2.id]

  enable_deletion_protection = true

  tags = {
    Environment = var.vmtag
  }
}
