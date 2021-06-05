terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("secret.json")

  project = "terraform-315913"
  region  = "asia-southeast2"
  zone    = "asia-southeast2-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
