project_id = "YOUR_PROJECT_ID_UAT"
region     = "us-central1"

# Existing backend services (assumed shared)
static_backend_name = "static-frontend"
secure_backend_name = "betasecure-frontend"
bucket_backend_name = "static-frontend-images"

# Load Balancer resources
lb_name   = "lb-uat-tf"
ip_name   = "lb-uat-ip-tf"
cert_name = "ssl-uat-cert-tf"

domains = [
  "uat.blockstats.app",
  "*.uat.blockstats.app"
]
