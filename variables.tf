variable "data_safe_target_database_peer_target_databases_lookup" {
  description = <<EOT
Map of data_safe_target_database_peer_target_databases_lookup, attributes below
Required:
    - target_database_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    target_database_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_target_database_peer_target_databases_lookup : (
        alltrue([for item in v.peer_target_database_collection : (item.items == null || alltrue([for item in item.items : (item.database_details == null || alltrue([for item in item.database_details : (item.database_type == null || (contains([for v in ["AUTONOMOUS_DATABASE", "DATABASE_CLOUD_SERVICE", "INSTALLED_DATABASE"] : lower(v)], lower(item.database_type))))]))]))])
      )
    ])
    error_message = "must be one of: \"AUTONOMOUS_DATABASE\", \"DATABASE_CLOUD_SERVICE\", \"INSTALLED_DATABASE\""
  }
}

