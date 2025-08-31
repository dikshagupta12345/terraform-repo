networks = {
  vpc1 = {
    project_id = "innate-bucksaw-464410-e8"
    region     = "us-central1"
    subnets = [
      { name = "subnet-a1", ip_cidr_range = "10.10.0.0/24" },
      { name = "subnet-a2", ip_cidr_range = "10.20.0.0/24" }
    ]
  }
  vpc2 = {
    project_id = "innate-bucksaw-464410-e8"
    region     = "us-east1"
    subnets = [
      { name = "subnet-b1", ip_cidr_range = "192.168.1.0/24" }
    ]
  }
  vpc3 = {
    project_id = "on-prem-project-469607"
    region     = "us-east1"
    subnets = [
      { name = "subnet-b3", ip_cidr_range = "192.168.2.0/24" }
    ]
  }
}
