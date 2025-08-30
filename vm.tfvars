instances = {
  app1 = {
    project_id    = "innate-bucksaw-464410-e8"
    instance_name = "vm-app1"
    machine_type  = "e2-small"
    zone          = "us-central1-a"
    image         = "debian-cloud/debian-11"
    network       = "vpc-1"
    subnetwork    = "subnet-a1"
    external_ip   = true
  }

  app2 = {
    project_id    = "innate-bucksaw-464410-e8"
    instance_name = "vm-app2"
    machine_type  = "e2-medium"
    zone          = "us-east1"
    image         = "debian-cloud/debian-11"
    network       = "vpc-2"
    subnetwork    = "subnet-b1"
    external_ip   = false
  }
}
