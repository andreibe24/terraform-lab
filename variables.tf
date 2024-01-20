variable "project_id" {
  description = "The ID of the project"
  type        = string
  default     = "qwiklabs-gcp-04-96b727e0cbf9"
}

variable "region" {
  description = "The workir region"
  type        = string
  default     = "us-west1"
}

variable "zone" {
  description = "The workdir zone"
  type        = string
  default     = "us-west1-c"
}

variable "bucket_name" {
  description = "Bucket name"
  type        = string
  default     = "tf-bucket-198754"
}