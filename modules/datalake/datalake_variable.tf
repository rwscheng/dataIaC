locals {
  data_lake_bucket = "rws_data_lake"
}

variable "project_id" {
  type        = string
  description = "The project id on cloud"
}

variable "region" {
  type        = string
  description = "The region of the cloud service"
}

variable "storage_class" {
  description = "Storage class type for the google cloud bucket"
  default = "STANDARD"
}