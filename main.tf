terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

# terraform {
#   backend "gcs" {
#     bucket  = "gjaxbucket"
#     prefix  = "terraform/vpc-stg"
#     credentials = "./key-dev.json"
#   }
# }


provider "google" {
  # credentials = file("key-dev.json")

  project = "civil-epigram-370317"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_storage_bucket" "static-site" {
  name          = "limaofrescojax"
  location      = "EU"

}