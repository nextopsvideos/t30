terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.57.0"
    }
  }
  backend "azurerm" {
    # use_cli               = true
    # use_azuread_auth      = true
    access_key            = "dakjkjkjfkjakjadkjfkajfkjaldkjfakja"
    # tenant_id             = "00000000-0000-0000-0000-000000000000"
    storage_account_name  = "nextopstf30"
    container_name        = "workspaces"
    key                   = "PROD/terraform.tfstate"    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  subscription_id = "dakjkjkjfkjakjadkjfkajfkjaldkjfakja"
}