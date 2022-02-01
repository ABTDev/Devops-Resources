terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "${var.subscriptionid}"
  tenant_id       = "${var.tenantid}"
}