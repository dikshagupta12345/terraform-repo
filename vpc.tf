resource "google_compute_network" "myvpc" {
  project                 = var.project_id
  name                    = "myvpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnetwork1"
  ip_cidr_range = "10.2.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.myvpc.id
}
