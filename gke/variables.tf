variable "project_name" {
  type    = string
  default = "my-project-417822"
}


variable "service_account_id" {
  type    = string
  default = "gke-cluster"
}

variable "service_account_display_name" {
  type    = string
  default = "Service Account GKE"
}

variable "cluster_name" {
  type    = string
  default = "tf-gke-cluster"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}

variable "node_count" {
  type    = number
  default = 3
}

variable "disk_size_gb" {
  type    = number
  default = 20
}

variable "bucket-name" {
  type = string
  default = "bucket-tfstatefiles0327"
}