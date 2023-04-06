provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_artifact_registry_repository" "flask_app_container_repo" {
  location      = "us-east1"
  repository_id = "test-flask-app-container-repo"
  description   = "test cloud run container registry"
  format        = "DOCKER"
}
