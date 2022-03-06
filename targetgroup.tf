resource "aws_alb_target_group" "target" {
  name     = var.targetname
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
  stickiness {
    type = "lb_cookie"
  }
}

resource "aws_lb_target_group_attachment" "tg_attach1" {
  target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:155525181032:targetgroup/terraform-alb-target/43bc70a7a845437f"
  target_id        = aws_instance.web1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg_attach2" {
  target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:155525181032:targetgroup/terraform-alb-target/43bc70a7a845437f"
  target_id        = aws_instance.web2.id
  port             = 80
}
