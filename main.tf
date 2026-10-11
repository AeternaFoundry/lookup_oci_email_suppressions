data "oci_email_suppressions" "email_suppressions_lookup" {
  for_each = var.email_suppressions_lookup

  compartment_id                        = each.value.compartment_id
  email_address                         = each.value.email_address
  time_created_greater_than_or_equal_to = each.value.time_created_greater_than_or_equal_to
  time_created_less_than                = each.value.time_created_less_than

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

