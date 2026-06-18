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
