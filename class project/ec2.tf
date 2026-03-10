resource "aws_instance" "tf_ec2_instance" {
  ami           = "ami-0ecb62995f68bb549" #ubuntu image 
  instance_type = "t3.micro"
  associate_public_ip_address = true # Whether to associate a public IP address with an instance in a VPC.
  vpc_security_group_ids = [ aws_security_group.tf_ec2_sg.id ] # security group association with instance
  user_data = file("script.sh") # user_data is use to associate a bash script with this instance 
  user_data_replace_on_change = true # It triggers a recreate once change is made in bash script 
  key_name = "terraform-ec2"  # Key name of the Key Pair to use for the instance.
  depends_on = [ aws_s3_object.tf_s3_object ] # This ensure the S3 bucket is create first
  

  tags = {
    Name = "Nodejs-server"
  }
}

#Security group 
