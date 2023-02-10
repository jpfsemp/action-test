terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
  backend "gcs" {
    bucket  = "gjaxbucket"
    prefix  = "terraform/pipeline-github"
}
}

provider "google" {
  project = "civil-epigram-370317"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_storage_bucket" "static-site" {
  name          = var.name_gcs
  location      = "EU"

}