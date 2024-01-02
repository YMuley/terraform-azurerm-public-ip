
# --------- Public IP ------------

resource "azurerm_public_ip" "public_ip" {
  for_each            = local.public_ip
  name                = each.value.name
  resource_group_name = var.resource_group_output[each.value.resource_group_name].name
  location            = each.value.location == null ? var.default_values.location : each.value.location
  sku                 = each.value.sku_tier == "Global" ? "Standard" : each.value.sku
  sku_tier            = each.value.sku_tier == null ? "Regional" : each.value.sku_tier
  zones               = each.value.zones
  allocation_method   = each.value.allocation_method
  domain_name_label   = each.value.domain_name_label
  tags                = each.value.tags == null ? var.default_values.tags : each.value.tags
}

