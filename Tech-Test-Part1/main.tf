
data "azurerm_subscription" "current" {
    subscription_id = var.subscription_id
}
resource "azurerm_resource_group" "servicebus_rg" {
  name     = var.servicebus_rg_name
  location = var.location
}

resource "azurerm_servicebus_namespace" "servicebus-namspace" {
  count = length(var.servicebus_namespaces)
  name                = var.servicebus_namespaces[count.index]
  location            = var.location
  resource_group_name = azurerm_resource_group.servicebus_rg.name
  sku                 = var.servicebus_sku

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    cost_centre = var.tags.cost_centre
    product_name = var.tags.product_name
  }
}


resource "azurerm_servicebus_queue" "servicebus_queues" {
  count               = length(var.servicebus_queue_names)
  name                = var.servicebus_queue_names[count.index]
  namespace_id = element(azurerm_servicebus_namespace.servicebus-namspace.*.id, count.index)
 
 lifecycle {
   prevent_destroy = true
 }
}
