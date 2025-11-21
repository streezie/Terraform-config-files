terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.22.0"
    }
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.54.0"
    
    }
    
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "my-access-key"
    secret_key = "my-secret-key"
  
}
 

provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}