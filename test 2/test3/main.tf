
    // Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
    // Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
    
      terraform {
        required_version = ">= 0.12.0"
      }
            
      resource "oci_core_vcn" "this" {
        dns_label             = var.dns_label
        cidr_block            = var.vcn_cidr
        compartment_id        = var.compartment_ocid
        display_name          = var.vcn_display_name
      }

      resource "oci_core_subnet" "this" {        
        vcn_id                      = oci_core_vcn.this.id
        cidr_block                  = var.vcn_cidr
        compartment_id              = var.compartment_ocid
        defined_tags                = null
        freeform_tags               = null
        display_name                = var.subnet_display_name
        prohibit_public_ip_on_vnic  = var.prohibit_public_ip_on_vnic
        dns_label                   = var.dns_label
        availability_domain         = var.availability_domain_name
        dhcp_options_id             = null
        route_table_id              = null
        security_list_ids           = null
      }

    