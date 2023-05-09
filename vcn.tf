# This block to - Deploy VCN
resource "oci_core_vcn" "tf_vcn" {
  cidr_block            = "10.0.0.0/16"
  compartment_id        = var.compartment_id
  display_name          = "terraformVCN"
  dns_label             = "terraformvcn"
}