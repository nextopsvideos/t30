resourcedetails = {
  "eastus" = {
    rg_name         = "eastRG"
    rg_location     = "eastus"
    vnet_name       = "eastVNET"
    address_space   = ["10.30.0.0/16"]
    subnet_name     = "eastsubnet1"
    address_prefix  = ["10.30.0.0/24"]
    nic_name        = "eastvmnic1"
    vm_name         = "eastvm02"
    vm_size         = "Standard_B1s"    
  }
  "westus" = {
    rg_name         = "westRG"
    rg_location     = "westus"
    vnet_name       = "westVNET"
    address_space   = ["10.40.0.0/16"]
    subnet_name     = "westsubnet1"
    address_prefix  = ["10.40.0.0/24"]
    nic_name        = "westvmnic1"
    vm_name         = "westvm02"
    vm_size         = "Standard_B2s" 
  }
} 