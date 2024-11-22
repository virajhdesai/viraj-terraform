data "akamai_group" "grp_241797" {
  group_name  = "videsa"
  contract_id = "ctr_1-1NC95D"
}

output "videsa" {
  value = data.akamai_group.grp_241797.id
}
