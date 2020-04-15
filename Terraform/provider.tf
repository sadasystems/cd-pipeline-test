provider "google" {
  region      = "${var.region}"
  credentials = "${file("account.json")}"
}

terraform {
  backend "gcs" {
    bucket  = "terraform-bucket-gcs"
    credentials = "account.json"
  }
}
