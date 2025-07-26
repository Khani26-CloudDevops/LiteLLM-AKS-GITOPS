variable "name" {
  description = "The name of the resource group"
  type        = string
  validation {
    condition     = length(var.name) <= 90
    error_message = "Resource group name must be 90 characters or less."
  }
}

variable "location" {
  description = "The Azure region for the resource group"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resource group"
  type        = map(string)
  default     = {}
}