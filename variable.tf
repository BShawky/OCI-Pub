# Tenancy OCID
variable "tenancy_ocid" {
  default        = "ocid1.tenancy.oc1..aaaaaaaabta7mjh77gvlkf2chnl2w4tgzfeagppzu5utsoisgsjq6z6kcdhq"
}

# Region
variable "region" {
    description  = "Techvisons Region"
    type         = string
    default      = "me-jeddah-1"
}

# Compartmet OCID
variable "compartment_id" {
    description  = "My Testing Compartment "
    type         = string
    default      = "ocid1.compartment.oc1..aaaaaaaawk4alwcvrpfraofm6ifwjj3okqgkqcld6g3k33ssgxn5zlgdqohq"
}
