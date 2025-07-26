variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}


# Network Configuration Variables
variable "subnet_name" {
  description = "Name of the existing subnet for AKS nodes"
  type        = string
  default     = "subnet_aks_litellm_poc"
}

variable "vnet_name" {
  description = "Name of the existing virtual network"
  type        = string
  default     = "vnet_aks_litellm_poc"
}

variable "vnet_resource_group_name" {
  description = "Resource group name where the VNet exists"
  type        = string
  default     = "rg_lltie_pheonix_aks_lab"
}

# Cluster Configuration Variables
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "aks-litellm-poc"
  validation {
    condition     = length(var.cluster_name) <= 63 && can(regex("^[a-zA-Z0-9-]+$", var.cluster_name))
    error_message = "Cluster name must be ≤63 chars, alphanumeric with hyphens."
  }
}

variable "dns_prefix" {
  description = "DNS prefix for AKS API server"
  type        = string
  default     = "aks-litellm"
  validation {
    condition     = length(var.dns_prefix) >= 3 && length(var.dns_prefix) <= 45
    error_message = "DNS prefix must be 3-45 characters long."
  }
}

variable "node_count" {
  description = "Number of worker nodes in default node pool"
  type        = number
  default     = 3
  validation {
    condition     = var.node_count >= 1 && var.node_count <= 100
    error_message = "Node count must be between 1 and 100."
  }
}

variable "vm_size" {
  description = "VM size for worker nodes"
  type        = string
  default     = "Standard_DS2_v2"
}

# Optional Variables with Defaults
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastus"
}

# variable "kubernetes_version" {
#   description = "Kubernetes version"
#   type        = string
# }

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
