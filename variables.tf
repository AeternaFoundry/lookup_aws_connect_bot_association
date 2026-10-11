variable "connect_bot_association_lookup" {
  description = <<EOT
Map of connect_bot_association_lookup, attributes below
Required:
    - instance_id
    - lex_bot (block):
        - lex_region (optional)
        - name (required)
Optional:
    - region
EOT

  type = map(object({
    instance_id = string
    region      = optional(string)
    lex_bot = object({
      lex_region = optional(string)
      name       = string
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

