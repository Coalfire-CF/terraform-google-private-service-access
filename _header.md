![Coalfire](coalfire_logo.png)


# Google Cloud Private Service Access Terraform Module

## Description

Private service access module that allows you to reach the internal IP addresses of services using private connections. This module creates a global address resource and peers it with the network. Coalfire has tested this module with Terraform version 1.5.0 and the Hashicorp Google provider versions 4.70 - 5.0.

FedRAMP Compliance: High (included as a part of Virtual Private Cloud)

### Usage

```
module "private-service-access" {
  source = "github.com/Coalfire-CF/terraform-gcp-private-service-access"

  project_id = data.terraform_remote_state.bootstrap.outputs.networking_project_id

  network       = module.private.network_name
  name          = "${var.subnet_prefix}-private-psa"
  peering_range = "${var.ip_network_mgmt}.12.0/23"

  depends_on = [module.module.private]
}
```

