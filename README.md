# Google Private Service Access

Private server access module that allows you to reach the internal IP addresses of services using private connections. This module creates a global address resource and peers it with the network.
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_global_address.private_service_connection](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |
| [google_service_networking_connection.private_service_connection](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_networking_connection) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | A name to associate for the service connection. | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Name or URI of VPC network connected with service producers using VPC peering. | `string` | n/a | yes |
| <a name="input_peering_range"></a> [peering\_range](#input\_peering\_range) | An IP address range to reserve for the service connection. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The Google Cloud Platform project ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address"></a> [address](#output\_address) | First IP of the reserved range. |
| <a name="output_google_compute_global_address_name"></a> [google\_compute\_global\_address\_name](#output\_google\_compute\_global\_address\_name) | URL of the reserved range. |
<!-- END_TF_DOCS -->