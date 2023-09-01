# Define the module of google computation instance
module "gpc_compute_engine" {
  source     = "./modules/computation"
  providers = {
      google = google.compute
    }  
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
}

# Define the module of google cloud storage
module "gpc_cloud_storage" {
  source     = "./modules/datalake"
  providers = {
      google = google.storage
    }  
  project_id = var.project_id
  region     = var.region

}

