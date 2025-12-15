data "azurerm_resource_group" "existingrg" {
  name  = "NextOpsRGT30"
}

data "azurerm_virtual_network" "existingvnet" {
  name                  = "NextOpsVNETT30"
  resource_group_name   = data.azurerm_resource_group.existingrg.name       #NextOpsRGT30
}

data "azurerm_subnet" "existingsubnet1" {
  name                  = "Subnet1"
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name     #NextOpsVNET30
  resource_group_name   = data.azurerm_resource_group.existingrg.name
}

#Following resources are under terraform control, because they were created by terraform
resource "azurerm_subnet" "newsubnet2" {
  name                  = "Subnet2"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name
  address_prefixes      = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "newsubnet3" {
  name                  = "Subnet3"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name
  address_prefixes      = ["10.10.2.0/24"]
}

resource "azurerm_subnet" "newsubnet4" {
  name                  = "Subnet4"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name
  address_prefixes      = ["10.10.3.0/24"]
}