# This block to - Deploy Internet Gateway
resource "oci_core_internet_gateway" "IG" {
  compartment_id   = var.compartment_id
  display_name     = "Internet Gateway"
  vcn_id           =  oci_core_vcn.tf_vcn.id
}
