data "oci_data_safe_target_database_peer_target_databases" "data_safe_target_database_peer_target_databases_lookup" {
  for_each = var.data_safe_target_database_peer_target_databases_lookup

  target_database_id = each.value.target_database_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

