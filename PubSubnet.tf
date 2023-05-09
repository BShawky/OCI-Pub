# This block to - Deploy Public Subnet in upper VCN
resource "oci_core_subnet" "pub_subnet" {
    vcn_id                      =  oci_core_vcn.tf_vcn.id
    cidr_block                  = "10.0.0.0/24"
    compartment_id              = var.compartment_id
    prohibit_public_ip_on_vnic  = false
    display_name                = "Public Subnet"
    dns_label                   = "publicsubnet"
}
