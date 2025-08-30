variable "networks" {
  type = map(object({
    project_id = string
    region     = string
    subnets = list(object({
      name          = string
      ip_cidr_range = string
    }))
  }))
}

variable "instances" {
  description = "Map of VM instances with configs"
  type = map(object({
    machine_type = string
    zone         = string
    image        = string
    network      = string
    subnetwork   = string
    external_ip  = bool
  }))
}
