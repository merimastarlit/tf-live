resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-central1"
  repository_id = "app-repo1"
  description   = "example docker repository"
  format        = "DOCKER"
}