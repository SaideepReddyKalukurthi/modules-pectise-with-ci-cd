
variable "name" {
  type        = string
  description = "Name of the router"
}

variable "network" {
  type        = string
  description = "A reference to the network to which this router belongs"
}

variable "project" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "Region where the router resides"
}

variable "description" {
  type        = string
  description = "An optional description of this resource"
  default     = null
}

variable "bgp" {
  description = "BGP information specific to this router."
  type        = any
  default     = null
}

variable "nats" {
  description = "NATs to deploy on this router."
  type        = any
  default     = []
}