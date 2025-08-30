module "vpc_module" {
  source      = "git::https://github.com/dikshagupta12345/vpc-module.git?ref=main"

  region         = "us-central1"
  project_id     = "innate-bucksaw-464410-e8"
  network = "testvpc"
  subnetwork = "subnetwork2"
}
