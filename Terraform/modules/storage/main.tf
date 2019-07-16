resource "google_filestore_instance" "instance" {
  name = "${var.storage_instance_name}"
  zone = "${var.zone}"
  tier = "PREMIUM"

  file_shares {
    capacity_gb = ${var.capacity_gb}
    name        = "${var.share_name}}"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}
