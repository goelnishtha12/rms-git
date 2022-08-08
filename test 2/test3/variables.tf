
    // Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
    // Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
    
      variable "compartment_ocid" {}
      variable "tenancy_ocid" {}
      variable "region" {}
      variable "vcn_cidr" {}
      variable "dns_label" {}
      variable "dns_enabled" {}
      variable "subnet_display_name" {}
      variable "vcn_display_name" {}
      variable "prohibit_public_ip_on_vnic" {}
      variable "availability_domain_name" {}
      variable "availability_domain_name2" {}
      variable "availability_domain_name3" {} 
            
      provider "oci" {
        tenancy_ocid     = var.tenancy_ocid
        region           = var.region
        version          = 3.66
      }
  