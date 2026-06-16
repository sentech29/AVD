variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region for the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "avd-resource-group"
  description = "Name of the Azure resource group to create."
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID for the azurerm provider."
}
variable "tenant_id" {
  type        = string
  description = "Azure tenant ID for the azurerm provider."
}
variable "client_id" {
  type        = string
  description = "Azure client ID for the azurerm provider."
}
variable "client_secret" {
  type        = string
  description = "Azure client secret for the azurerm provider."
}
