module "vm_module" {
  source     = "git::https://github.com/dikshagupta12345/vm-instance-module.git?ref=main"
  project_id = "innate-bucksaw-464410-e8"
  sa_name    = "test-sa"

  instances = {
    "app-vm1" = {
      machine_type = "e2-small"
      zone         = "us-central1-a"
      image        = "debian-cloud/debian-11"
      network      = "vpc1"
      subnetwork   = "subnet1"
    }
    "db-vm1" = {
      machine_type = "n1-standard-2"
      zone         = "us-central1-b"
      image        = "debian-cloud/debian-11"
      network      = "vpc1"
      subnetwork   = "subnet2"
    }
   }
}
