terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.5.0"
    }
  }
}
#use terrraform init -upgrade on version confusion

provider "azurerm" {
  features {}
}
#use terraform init -upgrade to update the version
#use terraform -auto-approve to prevent yes prompt