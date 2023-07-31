data "google_compute_network" "network" {
  project = var.project_id

  name = var.network
}

// We define a VPC peering subnet that will be peered with the
// Cloud SQL instance network. The Cloud SQL instance will
// have a private IP within the provided range.
// https://cloud.google.com/vpc/docs/configure-private-services-access
resource "google_compute_global_address" "private_service_connection" {
  project = var.project_id

  network = data.google_compute_network.network.name

  name          = var.name
  purpose       = "VPC_PEERING"
  address       = split("/", var.peering_range)[0]
  prefix_length = split("/", var.peering_range)[1]
  address_type  = "INTERNAL"

}

# Creates the peering with the producer network.
resource "google_service_networking_connection" "private_service_connection" {
  network                 = data.google_compute_network.network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_service_connection.name]
}
