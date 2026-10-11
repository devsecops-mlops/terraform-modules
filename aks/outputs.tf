output "id" {
  value       = azurerm_kubernetes_cluster.k8s.id
  description = "The Kubernetes Managed Cluster ID."
}

output "name" {
  value       = azurerm_kubernetes_cluster.k8s.name
  description = "The Kubernetes Managed Cluster name."
}

output "kube_config_raw" {
  value       = azurerm_kubernetes_cluster.k8s.kube_config_raw
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools."
  sensitive   = true
}

output "oidc_issuer_url" {
  value       = azurerm_kubernetes_cluster.k8s.oidc_issuer_url
  description = "The OIDC issuer URL for Workload Identity."
}

output "identity_principal_id" {
  value       = azurerm_kubernetes_cluster.k8s.identity[0].principal_id
  description = "The Principal ID associated with the cluster's SystemAssigned identity."
}
