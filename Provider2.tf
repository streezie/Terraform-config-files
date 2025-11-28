terraform {
  #local backend which using the path of your local device to store the terraform state file 
  backend "local" {
    path = "C:/Users/ukeme.okon/Downloads/Practice-Project/Practice Project/Terraform Project/state file/terraform.tfstate"  
  }
  #Remote backend which using and aws S3 bucket to store the terraform state file 
  backend "s3" {
    bucket = "mybucket"
    key = "path/to/my/key"
    region = "us-east-1"
    
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}
