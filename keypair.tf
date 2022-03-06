# SSH key pair

resource "aws_key_pair" "Task100key" {
  key_name   = var.keyname
  public_key = var.pub_key
}
