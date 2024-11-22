resource "akamai_cp_code" "terraform-test" {
  name        = "terra-test"
  contract_id = data.akamai_group.grp_241797.contract_id
  group_id    = data.akamai_group.grp_241797.id
  product_id  = "prd_Fresca"
}

resource "akamai_edge_hostname" "terraform-test-ehn" {
  product_id    = "prd_Fresca"
  contract_id   = data.akamai_group.grp_241797.contract_id
  group_id      = data.akamai_group.grp_241797.id
  edge_hostname = "www.videsaterra.com.edgesuite.net"
  ip_behavior   = "IPV4"
  ttl           = 300
}
