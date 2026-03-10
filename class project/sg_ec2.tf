resource "aws_security_group" "tf_ec2_sg" {
  name        = "Nodejs-server-sg"
  description = "Allow ssh and http traffica"
  vpc_id      = "vpc-0c4f0c70f114b44d5" #defualt VPC


  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allow from all IPs
    description =  "TLS from VPC"
  }  

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    description      =  "SSH"
  } 

  ingress {
    from_port        = 3000 # for nodejs app
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    description      =  "TCP"
  } 

    egress {
    from_port        = 0 # for nodejs app
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    description      =  "TCP"
  } 
}

