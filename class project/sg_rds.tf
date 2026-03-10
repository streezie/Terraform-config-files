resource "aws_security_group" "tf_rds_sg" {
  name        = "tf-rds-sg"
  description = "Allow mysql traffic"
  vpc_id      = "vpc-0c4f0c70f114b44d5" #defualt VPC


  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["154.113.194.10/32"] # IP Address of Local system
    security_groups = [aws_security_group.tf_ec2_sg.id] #Allow traffic for EC2 security group
  }  



    egress {
    from_port        = 0 # for nodejs app
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] # Allow all outbound traffic
   
  } 
}