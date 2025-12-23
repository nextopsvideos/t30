resource "azurerm_resource_group" "webrg" {
   name         = "LCCBDRG1"
   location     = "westus"

   lifecycle {
     create_before_destroy = true
   }
}

resource "azurerm_service_plan" "asp1" {
  name                  = "NextOpsASPT30"
  location              = azurerm_resource_group.webrg.location #depends_on
  os_type               = "Linux"
  sku_name              = "S2"
  resource_group_name   = azurerm_resource_group.webrg.name

  lifecycle {
     create_before_destroy = true
  }
}

resource "azurerm_linux_web_app" "app1" {
  name                = "nextopswat30"
  resource_group_name = azurerm_resource_group.webrg.name
  location            = azurerm_resource_group.webrg.location 
  service_plan_id     = azurerm_service_plan.asp1.id

  site_config {
    always_on = false
  }

  lifecycle {
     create_before_destroy = true
  }
}