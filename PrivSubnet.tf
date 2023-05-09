# This block to - Deploy Private Subnet in upper VCN
resource "oci_core_subnet" "private_subnet" {
    vcn_id                      =  oci_core_vcn.tf_vcn.id
    cidr_block                  = "10.0.1.0/24"
    compartment_id              = var.compartment_id
    prohibit_public_ip_on_vnic  = true
    display_name                = "Private Subnet"
    dns_label                   = "privsubnet"
}
