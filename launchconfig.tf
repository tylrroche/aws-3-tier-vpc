resource "aws_launch_configuration" "web-launch-config" {
  name_prefix     = "webserver-launch-config"
  image_id        = var.launchami
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.webapp.id}"]
}
