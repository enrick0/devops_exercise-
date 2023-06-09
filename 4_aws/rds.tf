
resource "aws_db_subnet_group" "dbsubnetgroup" {
  name        = "rds-subnet-group"
  description = "Our main group of subnets"
  subnet_ids  = ["${aws_subnet.private-a.id}", "${aws_subnet.private-b.id}"]
  tags = {
    Project = "wordpress"
  }
}

resource "aws_db_instance" "wpdb" {
  depends_on             = [aws_security_group.website]
  identifier             = "wpdb"
  allocated_storage      = "10"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  db_name                = "wpdb"
  username               = "wpdb"
  password               = "wpdbwpdb"
  multi_az               = "true"
  skip_final_snapshot    = "true"
  vpc_security_group_ids = ["${aws_security_group.database.id}"]
  db_subnet_group_name   = aws_db_subnet_group.dbsubnetgroup.id
  tags = {
    Project = "wordpress"
  }
}