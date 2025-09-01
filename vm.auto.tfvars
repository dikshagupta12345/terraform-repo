instances = {
  app1 = {
    project_id    = "innate-bucksaw-464410-e8"
    instance_name = "vm-app1"
    machine_type  = "e2-small"
    zone          = "us-central1-a"
    image         = "debian-cloud/debian-11"
    network       = "innate-bucksaw-464410-e8-vpc1-network"
    subnetwork    = "vpc1-subnet-a1"
    external_ip   = true
    service_account  = "app1-sa"
  }
  app2 = {
    project_id    = "on-prem-project-469607"
    instance_name = "vm-app2"
    machine_type  = "e2-small"
    zone          = "us-east1-b"
    image         = "debian-cloud/debian-11"
    network         = "projects/on-prem-project-469607/global/networks/vpc3-network"
    subnetwork      = "projects/on-prem-project-469607/regions/us-east1/subnetworks/vpc3-subnet-b3"
    external_ip   = true
    service_account  = "app2-sa"
  }
}

service_account = {
  app1-sa = {
    project_id   = "innate-bucksaw-464410-e8"
    display_name = "App1 Service Account"
  },
  app2-sa = {
    project_id   = "on-prem-project-469607"
    display_name = "App2 Service Account"
  }
}
