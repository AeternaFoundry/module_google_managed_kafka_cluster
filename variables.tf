variable "managed_kafka_clusters" {
  description = <<EOT
Map of managed_kafka_clusters, attributes below
Required:
    - cluster_id
    - location
    - capacity_config (block):
        - memory_bytes (required)
        - vcpu_count (required)
    - gcp_config (block):
        - access_config (required, block):
            - network_configs (required, block):
                - subnet (required)
            - public_cluster_config (optional, block):
                - allowed_source_ip_ranges (required)
        - kms_key (optional)
Optional:
    - deletion_policy
    - kafka_version
    - labels
    - project
    - broker_capacity_config (block):
        - disk_size_gib (optional)
    - rebalance_config (block):
        - mode (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - tls_config (block):
        - ssl_principal_mapping_rules (optional)
        - trust_config (optional, block):
            - cas_configs (optional, block):
                - ca_pool (required)
EOT

  type = map(object({
    cluster_id      = string
    location        = string
    deletion_policy = optional(string)
    kafka_version   = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    capacity_config = object({
      memory_bytes = string
      vcpu_count   = string
    })
    gcp_config = object({
      access_config = object({
        network_configs = list(object({
          subnet = string
        }))
        public_cluster_config = optional(object({
          allowed_source_ip_ranges = list(string)
        }))
      })
      kms_key = optional(string)
    })
    broker_capacity_config = optional(object({
      disk_size_gib = optional(string)
    }))
    rebalance_config = optional(object({
      mode = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    tls_config = optional(object({
      ssl_principal_mapping_rules = optional(string)
      trust_config = optional(object({
        cas_configs = optional(list(object({
          ca_pool = string
        })))
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_kafka_clusters : (
        length(v.gcp_config.access_config.network_configs) >= 1
      )
    ])
    error_message = "Each network_configs list must contain at least 1 items"
  }
}

