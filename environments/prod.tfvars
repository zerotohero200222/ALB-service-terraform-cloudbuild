project_id = "YOUR_PROJECT_ID_PROD"
region     = "us-central1"

# Existing backend services (update if prod uses different Cloud Run services)
static_backend_name = "static-frontend"
secure_backend_name = "betasecure-frontend"
bucket_backend_name = "static-frontend-images"

# Load Balancer resources
lb_name   = "lb-prod-tf"
ip_name   = "lb-prod-ip-tf"
cert_name = "ssl-prod-cert-tf"

domains = [
  "blockstats.app",
  "*.blockstats.app"
]
