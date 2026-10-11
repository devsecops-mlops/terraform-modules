output "id" {
  value       = azurerm_redis_cache.redis.id
  description = "The ID of the Redis Cache."
}

output "name" {
  value       = azurerm_redis_cache.redis.name
  description = "The name of the Redis Cache."
}

output "hostname" {
  value       = azurerm_redis_cache.redis.hostname
  description = "The Hostname of the Redis Instance."
}

output "ssl_port" {
  value       = azurerm_redis_cache.redis.ssl_port
  description = "The SSL Port of the Redis Instance."
}

output "primary_access_key" {
  value       = azurerm_redis_cache.redis.primary_access_key
  description = "The Primary Access Key for the Redis Cache."
  sensitive   = true
}
