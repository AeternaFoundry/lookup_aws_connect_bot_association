data "aws_connect_bot_association" "connect_bot_association_lookup" {
  for_each = var.connect_bot_association_lookup

  instance_id = each.value.instance_id
  region      = each.value.region

  lex_bot {
    lex_region = each.value.lex_bot.lex_region
    name       = each.value.lex_bot.name
  }
}

