terraform {

  backend "local" {
    path = "C:/Users/ukeme.okon/Downloads/Practice-Project/Practice Project/Terraform Project/state file/terraform.tfstate"  
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}

