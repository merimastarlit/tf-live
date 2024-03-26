terraform {
 backend "gcs" {
   bucket  = "BUCKET_NAME"
   prefix  = "terraform/state"
 }


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

