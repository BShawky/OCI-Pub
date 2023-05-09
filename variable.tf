variable "tenancy_ocid" {
  default        = "ocid1.tenancy.oc1..aaaaaaaabta7mjh77gvlkf2chnl2w4tgzfeagppzu5utsoisgsjq6z6kcdhq"
}

variable "region" {
    description  = "Techvisons Region"
    type         = string
    default      = "me-jeddah-1"
}

variable "compartment_id" {
    description  = "My Testing Compartment "
    type         = string
}