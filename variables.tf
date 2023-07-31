variable "network" {
  description = "Name or URI of VPC network connected with service producers using VPC peering."
  type        = string
}

variable "peering_range" {
  description = "An IP address range to reserve for the service connection."
  type        = string
}

variable "name" {
  description = "A name to associate for the service connection."
  type        = string
}

variable "project_id" {
  description = "The Google Cloud Platform project ID"
  type        = string
}
