resource "aws_autoscaling_group" "ASG" {
  name                 = var.asgname
  desired_capacity     = 2
  max_size             = 4
  min_size             = 2
  force_delete         = true
  depends_on           = [aws_lb.tjlb]
  target_group_arns    = ["${aws_lb_target_group.tj-tg.arn}"]
  health_check_type    = var.hctype
  launch_configuration = aws_launch_configuration.web-launch-config.name
  vpc_zone_identifier  = [aws_subnet.public1.id, aws_subnet.public2.id]

  tag {
  Environment = var.vmtag  
  propagate_at_launch = true
  }
}
