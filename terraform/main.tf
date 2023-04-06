provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_storage_bucket" "gcs_bucket" {
 name          = "example-terraform-actions-bucket-22323"
 location      = "US-EAST1"
 storage_class = "STANDARD"
 uniform_bucket_level_access = true
}
