output "email_suppressions_lookup_id" {
  description = "Map of id values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_suppressions_lookup_compartment_id" {
  description = "Map of compartment_id values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "email_suppressions_lookup_email_address" {
  description = "Map of email_address values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no email_address are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.email_address if v.email_address != null && length(v.email_address) > 0 }
}
output "email_suppressions_lookup_filter" {
  description = "Map of filter values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "email_suppressions_lookup_suppressions" {
  description = "Map of suppressions values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no suppressions are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.suppressions if v.suppressions != null && length(v.suppressions) > 0 }
}
output "email_suppressions_lookup_time_created_greater_than_or_equal_to" {
  description = "Map of time_created_greater_than_or_equal_to values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no time_created_greater_than_or_equal_to are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.time_created_greater_than_or_equal_to if v.time_created_greater_than_or_equal_to != null && length(v.time_created_greater_than_or_equal_to) > 0 }
}
output "email_suppressions_lookup_time_created_less_than" {
  description = "Map of time_created_less_than values across all email_suppressions_lookup, keyed the same as var.email_suppressions_lookup except keys with no time_created_less_than are omitted"
  value       = { for k, v in data.oci_email_suppressions.email_suppressions_lookup : k => v.time_created_less_than if v.time_created_less_than != null && length(v.time_created_less_than) > 0 }
}

