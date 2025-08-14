  resource "google_compute_instance" "instance" {
    name         = "${var.instance_name}-${count.index + 1}"
    machine_type = var.machine_type
    zone         = var.zone
    count        = var.instance_count

    boot_disk {
      initialize_params {
        image = var.image
      }
    }

    network_interface {
      network = google_compute_network.myvpc.name
      subnetwork=google_compute_subnetwork.subnet1.name
    }

    service_account {
      # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
      email  = google_service_account.custom_sa.email
      scopes = ["cloud-platform"]
    }

  }

  resource "google_service_account" "custom_sa" {
    account_id   = "custom-sa"
    display_name = "Custom SA for VM Instance"
  }