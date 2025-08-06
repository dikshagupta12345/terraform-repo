variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone" {
  description = "The GCP zone"
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "machine_type" {
  description = "Type of the compute instance"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Boot disk image"
  type        = string
  default     = "projects/debian-cloud/global/images/family/debian-11"
}

variable "network" {
  description = "VPC network name"
  type        = string
  default     = "default"
}


variable "tags" {
  description = "Tags for the instance"
  type        = list(string)
  default     = []
}

variable "instance_count" {
  description = "number of the compute instance"
  type        = number
}
