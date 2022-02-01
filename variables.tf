variable "subscriptionid" {
  description = "The Azure subscription ID."
}
variable "tenantid" {
  description = "The Azure Tenant ID."
}
variable "owner" {
    description = "Owner of the resources being deployed."
    type = string
    default = "Centric"
}

variable "env" {
    description = "Environment classification for the resources deployed."
    type = string
    default = "CentricDevops"
}

variable "region" {
    description = "Azure region"
    type = string
    default = "eastus2"
}

variable "nameprefix" {
    description = "A prefix for the servername."
    type = string
    default = "centricenv"
}

variable "storage_account_tier" {
    description = "Storage account tier for the Storage account."
    type = string
    default = "standard"
}

variable "storage_replication_type" {
    description = "Storage replication type for the Storage account."
    type = string
    default = "LRS"
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  type        = list(string)
  default     = []
}
variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = list(string)
  default     = ["subnet1"]
}