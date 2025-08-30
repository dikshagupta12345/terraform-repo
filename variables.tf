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
  description = "Map of VM configurations"
  type = map(object({
    project_id   = string
    instance_name = string
    machine_type  = string
    zone          = string
    image         = string
    network       = string
    subnetwork    = string
    external_ip   = bool
  }))
}
