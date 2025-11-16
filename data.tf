data "google_compute_backend_service" "static" {
  name = var.static_backend_name
}

data "google_compute_backend_service" "secure" {
  name = var.secure_backend_name
}

data "google_compute_backend_bucket" "bucket" {
  name = var.bucket_backend_name
}
