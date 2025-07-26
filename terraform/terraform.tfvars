resource_group_name = "rg_lltie_pheonix_aks_lab_tf"
location = "eastus"
tags = {
  Environment = "dev"
  Owner       = "Ishu"
}
subnet_name            = "subnet_aks_litellm_poc"
vnet_name              = "vnet_aks_litellm_poc"
vnet_resource_group_name = "rg_lltie_pheonix_aks_lab"

# Cluster Configuration
cluster_name          = "aks-litellm-poc"
dns_prefix            = "aks-litellm"
node_count            = 3
vm_size               = "Standard_D2ds_v6"
