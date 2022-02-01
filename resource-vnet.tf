
resource "azurerm_virtual_network" "centricvnet" {
  name                = "${var.nameprefix}-vnetwork"
  resource_group_name = azurerm_resource_group.CentricDevops.name
  location            = azurerm_resource_group.CentricDevops.location
  address_space       = var.address_space
  dns_servers         = var.dns_servers
}
resource "azurerm_subnet" "centricsubnet" {
  count                    = length(var.subnet_names)
  name                     = "{$var.subnet_names}[count.index]"
  resource_group_name      = azurerm_resource_group.CentricDevops.name
  virtual_network_name     = azurerm_virtual_network.centricvnet.name
  address_prefixes         = [var.subnet_prefixes[count.index]]
}

