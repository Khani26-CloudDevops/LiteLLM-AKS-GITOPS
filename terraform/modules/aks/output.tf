# modules/aks-with-acr/outputs.tf
output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "node_resource_group" {
  value = azurerm_kubernetes_cluster.aks.node_resource_group
}