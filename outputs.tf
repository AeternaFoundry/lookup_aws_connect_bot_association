output "connect_bot_association_lookup_id" {
  description = "Map of id values across all connect_bot_association_lookup, keyed the same as var.connect_bot_association_lookup"
  value       = { for k, v in data.aws_connect_bot_association.connect_bot_association_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connect_bot_association_lookup_instance_id" {
  description = "Map of instance_id values across all connect_bot_association_lookup, keyed the same as var.connect_bot_association_lookup"
  value       = { for k, v in data.aws_connect_bot_association.connect_bot_association_lookup : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "connect_bot_association_lookup_lex_bot" {
  description = "Map of lex_bot values across all connect_bot_association_lookup, keyed the same as var.connect_bot_association_lookup"
  value       = { for k, v in data.aws_connect_bot_association.connect_bot_association_lookup : k => one(v.lex_bot) if v.lex_bot != null && length(v.lex_bot) > 0 }
}
output "connect_bot_association_lookup_region" {
  description = "Map of region values across all connect_bot_association_lookup, keyed the same as var.connect_bot_association_lookup"
  value       = { for k, v in data.aws_connect_bot_association.connect_bot_association_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

