resource "google_managed_kafka_cluster" "managed_kafka_clusters" {
  for_each = var.managed_kafka_clusters

  cluster_id      = each.value.cluster_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  kafka_version   = each.value.kafka_version
  labels          = each.value.labels
  project         = each.value.project

  capacity_config {
    memory_bytes = each.value.capacity_config.memory_bytes
    vcpu_count   = each.value.capacity_config.vcpu_count
  }

  gcp_config {
    access_config {
      dynamic "network_configs" {
        for_each = each.value.gcp_config.access_config.network_configs
        content {
          subnet = network_configs.value.subnet
        }
      }
      dynamic "public_cluster_config" {
        for_each = each.value.gcp_config.access_config.public_cluster_config != null ? [each.value.gcp_config.access_config.public_cluster_config] : []
        content {
          allowed_source_ip_ranges = public_cluster_config.value.allowed_source_ip_ranges
        }
      }
    }
    kms_key = each.value.gcp_config.kms_key
  }

  dynamic "broker_capacity_config" {
    for_each = each.value.broker_capacity_config != null ? [each.value.broker_capacity_config] : []
    content {
      disk_size_gib = broker_capacity_config.value.disk_size_gib
    }
  }

  dynamic "rebalance_config" {
    for_each = each.value.rebalance_config != null ? [each.value.rebalance_config] : []
    content {
      mode = rebalance_config.value.mode
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "tls_config" {
    for_each = each.value.tls_config != null ? [each.value.tls_config] : []
    content {
      ssl_principal_mapping_rules = tls_config.value.ssl_principal_mapping_rules
      dynamic "trust_config" {
        for_each = tls_config.value.trust_config != null ? [tls_config.value.trust_config] : []
        content {
          dynamic "cas_configs" {
            for_each = trust_config.value.cas_configs != null ? trust_config.value.cas_configs : []
            content {
              ca_pool = cas_configs.value.ca_pool
            }
          }
        }
      }
    }
  }
}

