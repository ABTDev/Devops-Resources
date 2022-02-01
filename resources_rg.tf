resource "azurerm_resource_group" "CentricDevops" {
    name = "${var.nameprefix}-rg"
    location = "${var.region}"

tags = {
        Owner       = "${var.owner}"
        environment = "${var.env}"

}
}