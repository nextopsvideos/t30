# Resource Group
# Virtual Network 
# Subnet
# Virtual Machine

resource "azurerm_resource_group" "rg1" {
  name     = "TFRG"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet1" {
  name                  = "TFVNET01"
  resource_group_name   = "TFRG"
  location              = "eastus"
  address_space         = ["10.3.0.0/16"]
}

resource "azurerm_subnet" "subnet1" {
  name                  = "Subnet1"
  resource_group_name   = "TFRG"
  virtual_network_name  = "TFVNET01"
  address_prefixes      = ["10.3.0.0/24"]
  depends_on = [ azurerm_virtual_network.vnet1 ]
}

resource "azurerm_subnet" "subnet2" {
  name                  = "Subnet2"
  resource_group_name   = "TFRG"
  virtual_network_name  = "TFVNET01"
  address_prefixes      = ["10.3.1.0/24"]
  depends_on = [ azurerm_virtual_network.vnet1 ]
}

resource "azurerm_subnet" "subnet3" {
  name                  = "Subnet3"
  resource_group_name   = "TFRG"
  virtual_network_name  = "TFVNET01"
  address_prefixes      = ["10.3.2.0/24"]
  depends_on = [ azurerm_virtual_network.vnet1 ]
}