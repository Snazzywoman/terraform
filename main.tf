terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "project-moyinoluwa4"
  credentials = file("project-moyinoluwa4-b0ea3b230d5d.json")
}

resource "google_compute_instance" "test-vm" {
  name         = "test-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {  
    }
  }
}