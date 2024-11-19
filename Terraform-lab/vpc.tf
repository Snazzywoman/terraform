resource "google_compute_network" "vpc-network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}
resource "google_compute_subnetwork" "subnet1" {
  name          = "my-subnet-2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-west1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet2s" {
  name          = "my-subnet-3"
  ip_cidr_range = "10.0.3.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}
