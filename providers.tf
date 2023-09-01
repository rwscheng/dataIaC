# Define Terraform provider
terraform {
  required_version = "~> 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 1.0"
    }
  }
}

# Define default cloud provider
provider "google" {
  credentials = file(var.compute_credentials)
  project     = var.project_id
  region      = var.region
}

# Define cloud provider for google computation
provider "google" {
  credentials = file(var.compute_credentials)
  project     = var.project_id
  region      = var.region
  alias       = "compute"
}

# Define cloud provider for google storage
provider "google" {
  credentials = file(var.storage_credentials)
  project     = var.project_id
  region      = var.region
  alias       = "storage"
}