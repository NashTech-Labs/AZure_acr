data "azurerm_resource_group" "aksrg" {
  name     = var.resource_group_name
}

resource "azurerm_container_registry" "acr" {
  name                = "${var.resourceLocation}${var.domain}${var.resourceType}acr"
  resource_group_name = data.azurerm_resource_group.aksrg.name
  location            = data.azurerm_resource_group.aksrg.location
  sku                 = var.service_tiers
  admin_enabled       = false
}
