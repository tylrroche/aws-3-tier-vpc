resource "aws_lb_target_group" "tj-tg" {
  name       = "Task-100-tf"
  depends_on = ["aws_vpc.main"]
  port       = 80
  protocol   = "HTTP"
  vpc_id     = aws_vpc.main.id
  health_check {
    interval            = 70
    path                = "/index.html"
    port                = 80
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 60
    protocol            = "HTTP"
    matcher             = "200,202"
  }
}
