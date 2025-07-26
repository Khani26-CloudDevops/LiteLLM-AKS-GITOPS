# modules/aks-with-acr/variables.tf
variable "resource_group_name" {
  type        = string
  description = "Existing resource group name"
}

variable "cluster_name" {
  type        = string
  description = "AKS cluster name"
  default     = "aks-litellm-poc"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "eastus"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for API server"
  default     = "litellm"
}

# variable "kubernetes_version" {
#   type        = string
#   description = "Kubernetes version"
# }

variable "node_pool_name" {
  type        = string
  description = "Node pool name"
  default     = "systempool"
}

variable "node_count" {
  type        = number
  description = "Number of nodes"
  default     = 3
}

variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_DS2_v2"
}

variable "service_cidr" {
  type        = string
  description = "Service CIDR"
  default     = "10.1.0.0/16"
}

variable "dns_service_ip" {
  type        = string
  description = "DNS service IP"
  default     = "10.1.0.10"
}

variable "sku_tier" {
  type        = string
  description = "AKS tier (Free/Standard)"
  default     = "Standard"
}

variable "acr_sku" {
  type        = string
  description = "ACR SKU"
  default     = "Standard"
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "Log Analytics Workspace ID"
  default     = null
}

variable "vnet_subnet_id" {
  type        = string
  description = "Vnet subnet id"
}
