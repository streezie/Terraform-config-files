resource "aws_db_instance" "tf_rds_database" {
  allocated_storage    = 10
  db_name              = "ukeme_demo" # Name of the database create in the instance 
  engine               = "mysql"
  identifier           = "nodejs-rds-mysql" # Name of the rds instance
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Ukeme123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = true # RDS instance gets publicIP address, and accessed from outside the VPC
  #vpc_security_group_ids = [aws_security_group.tf_rds_sg.id] # database is not open to everyone, security Groups still control who can connect.
  vpc_security_group_ids = [aws_security_group.tf_rds_sg.id]
}
                              



