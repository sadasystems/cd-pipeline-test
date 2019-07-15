provider "google" {
  region      = "${var.region}"
  credentials = "${file("account.json")}"
}

terraform {
  backend "gcs" {
    bucket  = "opencue-tf-test"
    credentials = "account.json"
  }
}
