module "vm_module" {
  source      = "git::https://github.com/dikshagupta12345/main-modules.git?ref=main"
  instance_name  = "app"
  machine_type   = "e2-small"
  region         = "us-central1"
  zone           = "us-central1-a"
  project_id     = "innate-bucksaw-464410-e8"
  instance_count = 1
  network = "myvpc"
  subnetwork = "subnetwork1"
}
