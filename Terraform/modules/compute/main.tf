## Add compute and DB resources

resource "google_compute_instance" "vm_instance" {
  name         = "${var.compute_name}"
  machine_type = "${var.compute_type}"
  project = "${var.project}"
  zone = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.compute_image}"
    }
  }
  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }
  }
