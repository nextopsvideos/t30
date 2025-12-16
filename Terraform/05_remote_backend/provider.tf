terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.56.0"
    }
  }
  backend "azurerm" {
    # use_cli               = true
    # use_azuread_auth      = true
    access_key            = "asdkfjkjdkckcdnjdkmlaksLKJKDJFKDKFJCIJERIJKMSCDIFIMALAKAJFHldkflsdmcmdkfj"
    # tenant_id             = "00000000-0000-0000-0000-000000000000"
    storage_account_name  = "nextopssat30"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  subscription_id = "00000000-0000-0000-0000-000000000000"
}