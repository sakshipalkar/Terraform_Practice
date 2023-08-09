resource "aws_db_instance" "my-rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0.27"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  skip_final_snapshot  = true
  publicly_accessible = true
}