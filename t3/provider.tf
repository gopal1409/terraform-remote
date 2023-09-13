provider "azurerm" {
  features {}
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #source = "hashicorp/aws"
      #version = "2.40.0"
    }
  }
}




