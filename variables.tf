variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "static_backend_name" {
  description = "Backend service name for static Cloud Run frontend"
  type        = string
}

variable "secure_backend_name" {
  description = "Backend service name for secure Cloud Run frontend"
  type        = string
}

variable "bucket_backend_name" {
  description = "Backend bucket name for static GCS content"
  type        = string
}

variable "lb_name" {
  description = "Load Balancer name"
  type        = string
}

variable "url_map_name" {
  description = "URL Map name"
  type        = string
}

variable "proxy_name" {
  description = "HTTPS Proxy name"
  type        = string
}

variable "forwarding_rule_name" {
  description = "Forwarding Rule name"
  type        = string
}

variable "ip_name" {
  description = "Global Static IP name"
  type        = string
}

variable "cert_name" {
  description = "Managed SSL cert name"
  type        = string
}

variable "domains" {
  description = "List of domains for SSL certificate"
  type        = list(string)
}

