resource "aws_db_instance" "example" {
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "15.5"
  instance_class       = "db.t2.micro"
  db_name              = "localstack"
  username             = "admin"
  password             = "password"
  skip_final_snapshot  = true
  publicly_accessible  = false
  storage_type         = "gp2"
  parameter_group_name = "default.postgres13"
}