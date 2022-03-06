resource "aws_alb_listener" "listener" {
  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:155525181032:loadbalancer/app/webapplb/30b79b14f665e4de"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.target.arn
    type             = "forward"
  }
}
