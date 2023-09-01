variable "project_id" {
  type        = string
  default     = "datawarehouse-395606"
  description = "The project id on cloud"
}

variable "region" {
  type        = string
  default     = "asia-east2"
  description = "The region of the cloud service"
}

variable "zone" {
  type        = string
  default     = "asia-east2-a"
  description = "The zone of the cloud service"
}

variable "compute_credentials" {
  type        = string
  default     = "./service_acc/datawarehouse-computation.json"
  description = "The secret service key for computation"
}

variable "storage_credentials" {
  type        = string
  default     = "./service_acc/datawarehouse-storage-key.json"
  description = "The secret service key for storage"
}
