terraform {
  backend "gcs" {
    bucket = "bucket-tfstatefiles0327"
    prefix = "terraform/state"
  }


#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "5.21.0"
#     }
#   }
}

