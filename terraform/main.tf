provider "google" {
  credentials = file("key.json")
  project     = "useful-patrol-314908"
  region      = "us-central1"
}

resource "google_compute_address" "static_ip" {
  name   = "cloud-compose-static-ip"
  region = "us-central1"
}


resource "google_compute_instance" "cloud-compose" {
  name         = "cloud-compose"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }
  
  metadata_startup_script = file("startup_script.sh")
}

resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["5000"]
  }

  source_ranges = ["0.0.0.0/0"]
}
