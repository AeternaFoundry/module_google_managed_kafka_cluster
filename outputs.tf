output "managed_kafka_clusters_id" {
  description = "Map of id values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no id are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_clusters_bootstrap_address" {
  description = "Map of bootstrap_address values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no bootstrap_address are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.bootstrap_address if v.bootstrap_address != null && length(v.bootstrap_address) > 0 }
}
output "managed_kafka_clusters_broker_capacity_config" {
  description = "Map of broker_capacity_config values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no broker_capacity_config are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => one(v.broker_capacity_config) if v.broker_capacity_config != null && length(v.broker_capacity_config) > 0 }
}
output "managed_kafka_clusters_capacity_config" {
  description = "Map of capacity_config values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no capacity_config are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => one(v.capacity_config) if v.capacity_config != null && length(v.capacity_config) > 0 }
}
output "managed_kafka_clusters_cluster_id" {
  description = "Map of cluster_id values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no cluster_id are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "managed_kafka_clusters_create_time" {
  description = "Map of create_time values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no create_time are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "managed_kafka_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "managed_kafka_clusters_effective_labels" {
  description = "Map of effective_labels values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "managed_kafka_clusters_gcp_config" {
  description = "Map of gcp_config values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no gcp_config are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => one(v.gcp_config) if v.gcp_config != null && length(v.gcp_config) > 0 }
}
output "managed_kafka_clusters_kafka_version" {
  description = "Map of kafka_version values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no kafka_version are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.kafka_version if v.kafka_version != null && length(v.kafka_version) > 0 }
}
output "managed_kafka_clusters_labels" {
  description = "Map of labels values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no labels are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "managed_kafka_clusters_location" {
  description = "Map of location values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no location are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "managed_kafka_clusters_name" {
  description = "Map of name values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no name are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_clusters_project" {
  description = "Map of project values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no project are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "managed_kafka_clusters_public_cluster_details" {
  description = "Map of public_cluster_details values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no public_cluster_details are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.public_cluster_details if v.public_cluster_details != null && length(v.public_cluster_details) > 0 }
}
output "managed_kafka_clusters_rebalance_config" {
  description = "Map of rebalance_config values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no rebalance_config are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => one(v.rebalance_config) if v.rebalance_config != null && length(v.rebalance_config) > 0 }
}
output "managed_kafka_clusters_state" {
  description = "Map of state values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no state are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "managed_kafka_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "managed_kafka_clusters_tls_config" {
  description = "Map of tls_config values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no tls_config are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => one(v.tls_config) if v.tls_config != null && length(v.tls_config) > 0 }
}
output "managed_kafka_clusters_update_time" {
  description = "Map of update_time values across all managed_kafka_clusters, keyed the same as var.managed_kafka_clusters except keys with no update_time are omitted"
  value       = { for k, v in google_managed_kafka_cluster.managed_kafka_clusters : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

