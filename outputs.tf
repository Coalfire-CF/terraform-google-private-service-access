output "address" {
  value       = google_compute_global_address.private_service_connection.address
  description = "First IP of the reserved range."
}

output "google_compute_global_address_name" {
  value       = google_compute_global_address.private_service_connection.name
  description = "URL of the reserved range."
}
