# Define Google Cloud Storage as Data Lake
resource "google_storage_bucket" "cloud_storage" {
  name          = "${local.data_lake_bucket}_${var.project_id}" # Concatenating DL bucket & Project name for unique naming
  location      = var.region

  # Optional, but recommended settings:
  storage_class = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }
  force_destroy = true
}
