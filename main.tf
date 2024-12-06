data "akamai_group" "grp_241797" {
  group_name  = "videsa"
  contract_id = "ctr_1-1NC95D"
}

output "videsa" {
  value = data.akamai_group.grp_241797.id
}

resource "akamai_property" "videsa1" {
  name        = "videsa-terraform-demo"
  product_id  = "prd_Fresca"
  contract_id = data.akamai_group.grp_241797.contract_id
  group_id    = data.akamai_group.grp_241797.id
}

#output "property id" {
#    value = akamai_property.my_property.id
#}
