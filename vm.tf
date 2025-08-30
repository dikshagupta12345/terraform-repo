module "vm_module" {
  source      = "git::https://github.com/dikshagupta12345/vm-instance-module.git?ref=main"

  instance_name  = "app"
  machine_type   = "e2-small"
  region         = "us-central1"
  zone           = "us-central1-a"
  project_id     = "innate-bucksaw-464410-e8"
  instance_count = 1
  network = "testvpc"
  subnetwork = "subnetwork2"
  sa_name = "test-sa"
}
