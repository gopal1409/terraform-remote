provider "azurerm" {
  features {} 
}

provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false 
      ##it will ensure when the vm is destro disk is not delete. 

    }
  }
  alias = "provider2-westus"
  #cleintid="XXXXX"
  ##clientsecret = "YYYY"
  #environment = "us2"
  #"subscription_id"="1221212"
}
terraform {
  required_providers {
    azurerm={
      source = "hashicorp/azurerm"
      #source = "hashicorp/aws"
      #version = "2.40.0" #this is a provider api version we are using in terrafrom. 
     # new version will always have bugs. 
    } 
  }
}




