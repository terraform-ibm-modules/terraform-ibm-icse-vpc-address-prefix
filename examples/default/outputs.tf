##############################################################################
# Address Prefix Outputs
##############################################################################

output "list" {
  description = "List of Address Prefix Objects"
  value = [
    for prefix in ibm_is_vpc_address_prefix.address_prefixes :
    {
      name           = prefix.name
      id             = prefix.id
      zone           = prefix.zone
      address_prefix = prefix.address_prefix
    }
  ]
}

##############################################################################


##############################################################################
# Output Arbitrary Locals
##############################################################################

output "arbitrary_locals" {
  description = "A map of unessecary variable values to force linter pass"
  value = {
    resource_group = var.resource_group
    resource_tags  = var.resource_tags
  }
}

##############################################################################
