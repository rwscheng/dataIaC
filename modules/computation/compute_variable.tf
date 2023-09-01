variable "project_id" {
  type        = string
  description = "The project id on cloud"
}

variable "region" {
  type        = string
  description = "The region of the cloud service"
}

variable "zone" {
  type        = string
  description = "The zone of the cloud service"
}

variable "compute_name" {
  type        = string
  default     = "rws-data-engine"
  description = "The Computation Engine Name"
}

variable compute_disk_name {
  type        = string
  default     = "compute-disk-1"
  description = "The name of google compute disk"
}

variable compute_disk_type {
  type        = string
  default     = "pd-standard"
  description = "The name of google compute disk type"
}

variable compute_disk_size {
  type        = number
  default     = 30
  description = "The size of google compute disk"
}

variable compute_machine_type {
  type        = string
  default     = "e2-standard-4"
  description = "The machine type of the compute engine"
}
