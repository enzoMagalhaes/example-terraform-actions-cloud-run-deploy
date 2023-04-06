provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_storage_bucket" "gcs_bucket" {
  name                        = "example-terraform-actions-bucket-22323"
  location                    = "US-EAST1"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_artifact_registry_repository" "flask_app_container_repo" {
  location      = "us-east1"
  repository_id = "test_flask_app_container_repo"
  description   = "test cloud run container registry"
  format        = "DOCKER"
  mode          = "STANDARD"
}
