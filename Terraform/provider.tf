provider "google" {
  region      = "${var.region}"
  credentials = "${file("account.json")}"
  project = "${var.project}"
}

terraform {
  backend "gcs" {
    bucket  = "terraform-bucket-gcs"
    credentials = "account.json"
  }
}
