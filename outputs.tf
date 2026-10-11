output "data_safe_target_database_peer_target_databases_lookup_id" {
  description = "Map of id values across all data_safe_target_database_peer_target_databases_lookup, keyed the same as var.data_safe_target_database_peer_target_databases_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_data_safe_target_database_peer_target_databases.data_safe_target_database_peer_target_databases_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_target_database_peer_target_databases_lookup_filter" {
  description = "Map of filter values across all data_safe_target_database_peer_target_databases_lookup, keyed the same as var.data_safe_target_database_peer_target_databases_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_data_safe_target_database_peer_target_databases.data_safe_target_database_peer_target_databases_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "data_safe_target_database_peer_target_databases_lookup_peer_target_database_collection" {
  description = "Map of peer_target_database_collection values across all data_safe_target_database_peer_target_databases_lookup, keyed the same as var.data_safe_target_database_peer_target_databases_lookup except keys with no peer_target_database_collection are omitted"
  value       = { for k, v in data.oci_data_safe_target_database_peer_target_databases.data_safe_target_database_peer_target_databases_lookup : k => v.peer_target_database_collection if v.peer_target_database_collection != null && length(v.peer_target_database_collection) > 0 }
}
output "data_safe_target_database_peer_target_databases_lookup_target_database_id" {
  description = "Map of target_database_id values across all data_safe_target_database_peer_target_databases_lookup, keyed the same as var.data_safe_target_database_peer_target_databases_lookup except keys with no target_database_id are omitted"
  value       = { for k, v in data.oci_data_safe_target_database_peer_target_databases.data_safe_target_database_peer_target_databases_lookup : k => v.target_database_id if v.target_database_id != null && length(v.target_database_id) > 0 }
}

