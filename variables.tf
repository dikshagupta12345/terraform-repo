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
  description = "Map of VM instances to create"
  type = map(object({
    project_id    = string
    instance_name = string
    machine_type  = string
    zone          = string
    image         = string
    network       = string
    subnetwork    = string
    external_ip   = bool
    service_account  = string
  }))
}

variable "service_accounts" {
  description = "Map of service accounts"
  type = map(object({
    project_id   = string
    display_name = string
  }))
  default = {}
}
