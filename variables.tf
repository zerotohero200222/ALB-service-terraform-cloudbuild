variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

# Existing resources
variable "static_backend_name" {
  type = string
}

variable "secure_backend_name" {
  type = string
}

variable "bucket_backend_name" {
  type = string
}

# LB resource names
variable "lb_name" {
  type    = string
  default = "lb-beta-tf"
}

variable "ip_name" {
  type    = string
  default = "lb-beta-ip-tf"
}

variable "cert_name" {
  type    = string
  default = "ssl-beta-cert-tf"
}

variable "domains" {
  type    = list(string)
  default = ["blockstats.app", "*.blockstats.app"]
}

variable "forwarding_rule_name" {
  type    = string
  default = "lb-beta-fw-tf"
}

variable "proxy_name" {
  type    = string
  default = "lb-beta-proxy-tf"
}

variable "url_map_name" {
  type    = string
  default = "lb-beta-urlmap-tf"
}
