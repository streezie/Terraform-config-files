#output
output "ec2_public_ip" {
  #value = aws_instance.tf_ec2_instance.public_ip 
  value = "ssh -i ~/.ssh/terraform-ec2.pem ubuntu@${aws_instance.tf_ec2_instance.public_ip}" # Append the public 2 ssh command
  
}