resource "aws_db_subnet_group" "db-subnet" {
  name       = "db_subnet_group"
  subnet_ids = ["${aws_subnet.private1.id}", "${aws_subnet.private2.id}"]
}
