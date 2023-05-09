 terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.119.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
}

# This block to - Deploy VCN
resource "oci_core_vcn" "tf_vcn" {
  cidr_block            = "10.0.0.0/16"
  compartment_id        = var.compartment_id
  display_name          = "terraformVCN"
  dns_label             = "terraformvcn"
}

# This block to - Deploy Public Subnet in upper VCN
resource "oci_core_subnet" "pub_subnet" {
    vcn_id                      =  oci_core_vcn.tf_vcn.id
    cidr_block                  = "10.0.0.0/24"
    compartment_id              = var.compartment_id
    display_name                = "publicSubnet"
    dns_label                   = "publicsubnet"
}

# This block to - Deploy Private Subnet in upper VCN
resource "oci_core_subnet" "private_subnet" {
    vcn_id                      =  oci_core_vcn.tf_vcn.id
    cidr_block                  = "10.0.1.0/24"
    compartment_id              = var.compartment_id
    prohibit_public_ip_on_vnic  = false
    display_name                = "privSubnet"
    dns_label                   = "privsubnet"
}
