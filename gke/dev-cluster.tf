module "gke-dev-cluster" {
  source                       = "/Users/meerim/Devops/REPOS/tf-modules//gke"
  project_name                 = var.project_name
  service_account_id           = "dev-account"
  service_account_display_name = "Service Account GKE"
  cluster_name                 = "dev-cluster-name"
  region                       = "us-central1"
  zone                         = "us-central1-c"
}