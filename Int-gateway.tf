# This block to - Deploy Internet Gateway
resource "oci_core_internet_gateway" "IG" {
  compartment_id = var.compartment_ocid
  display_name = "Internet Gateway"
  vcn_id = oci_core_virtual_network.tf_vcn.id
}
