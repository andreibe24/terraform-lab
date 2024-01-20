provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "instances" {
  source       = "./modules/instances"
  
  project_id = var.project_id
  region = var.region
  zone = var.zone

}

module "storage" {
  source       = "./modules/storage"

  project_id = var.project_id
  region = var.region
  zone = var.zone
  bucket_name = var.bucket_name
}

terraform {
  backend "gcs" {
    bucket  = var.bucket_name
    prefix  = "terraform/state"
  }
}
