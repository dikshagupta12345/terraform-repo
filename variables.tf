variable "project_id" {
  description = "Project ID where resources will be created"
  type        = string
}

variable "vpcs" {
  description = "Map of VPCs and their subnets"
  type = map(object({
    subnets = map(object({
      region = string
      cidr   = string
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
