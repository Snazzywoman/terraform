resource "google_compute_instance" "test-vm" {
  name         = "my-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet"

    access_config {  
    }
  }
}
resource "google_sql_database_instance" "mysql_db" {
  name             = "mysql-db"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "postgres_db" {
  name             = "postgres-db"
  database_version = "POSTGRES_14"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}
