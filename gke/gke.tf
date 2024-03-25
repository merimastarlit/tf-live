
# resource "google_service_account" "default" {
#   account_id   = var.service_account_id
#   display_name = var.service_account_display_name
# }

# resource "google_container_cluster" "primary" {
#   name     = var.cluster_name
#   location = var.zone

#   # We can't create a cluster with no node pool defined, but we want to only use
#   # separately managed node pools. So we create the smallest possible default
#   # node pool and immediately delete it.
#   #   remove_default_node_pool = true
#   initial_node_count = var.node_count # change into 3 if possible
#   node_config {
#     disk_size_gb = var.disk_size_gb

#     # Google recommeds having a custom service account that have permissions granted via IAM roles
#     service_account = google_service_account.default.email
#   }
# }

# # resource "google_container_node_pool" "primary_preemptible_nodes" {
# #   name       = "my-node-pool"
# #   location   = "us-central1"
# #   cluster    = google_container_cluster.primary.name
# #   node_count = 1

# #   node_config {
# #     preemptible  = true
# #     machine_type = "e2-medium"

# #     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
# #     service_account = google_service_account.default.email
# #     oauth_scopes    = [
# #       "https://www.googleapis.com/auth/cloud-platform"
# #     ]
# #   }
# # }