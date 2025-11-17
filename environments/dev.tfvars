project_id = "eastern-augury-477909-q6"
region     = "us-central1"

static_backend_name = "static-frontend"
secure_backend_name = "betasecure-frontend"

# ❗ REAL backend bucket name
bucket_backend_name = "dev-prj-frontend-apps1"

lb_name               = "lb-dev"
url_map_name          = "lb-dev-urlmap"
proxy_name            = "lb-dev-proxy"
forwarding_rule_name  = "lb-dev-forwarding-rule"
ip_name               = "lb-dev-ip"
cert_name             = "ssl-dev-cert"

domains = [
  "dev.blockstats.app",
  "*.dev.blockstats.app"
]
