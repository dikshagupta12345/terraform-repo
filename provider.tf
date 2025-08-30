terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  backend "gcs" {
    bucket = "boot-tf-state-bucket"
    prefix = "terraform/new-state"
  }
}

provider "google" {
  project     = "innate-bucksaw-464410-e8"
  region      = "us-central1"
}
