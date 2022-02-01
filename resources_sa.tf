resource "azurerm_storage_account" "centricDevopsSA" {
  name                     = "${var.nameprefix}sa"
  resource_group_name      = azurerm_resource_group.CentricDevops.name
  location                 = azurerm_resource_group.CentricDevops.location
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_replication_type}"
}