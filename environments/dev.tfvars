project_id = "YOUR_PROJECT_ID_DEV"
region     = "us-central1"

# Existing backend services (created manually)
static_backend_name = "static-frontend"
secure_backend_name = "betasecure-frontend"
bucket_backend_name = "static-frontend-images"

# Load Balancer resources (Terraform will create new LB)
lb_name   = "lb-dev-tf"
ip_name   = "lb-dev-ip-tf"
cert_name = "ssl-dev-cert-tf"

# Managed SSL domains
domains = [
  "dev.blockstats.app",
  "*.dev.blockstats.app"
]
