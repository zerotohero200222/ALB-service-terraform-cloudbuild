# =====================================================
# Global Static IP
# =====================================================
resource "google_compute_global_address" "lb_ip" {
  name = var.ip_name
}


# =====================================================
# Managed SSL Certificate
# =====================================================
resource "google_compute_managed_ssl_certificate" "lb_cert" {
  name = var.cert_name

  managed {
    domains = var.domains
  }
}


# =====================================================
# URL Map
# =====================================================
resource "google_compute_url_map" "lb_urlmap" {
  name = var.url_map_name

  # Default backend → static frontend backend service
  default_service = data.google_compute_backend_service.static.self_link

  # Host rule → sends beta.blockstats.app traffic to secure backend
  host_rule {
    hosts        = ["beta.blockstats.app"]
    path_matcher = "secure-matcher"
  }

  path_matcher {
    name            = "secure-matcher"
    default_service = data.google_compute_backend_service.secure.self_link
  }

  # Map /images/* to backend bucket
  path_matcher {
    name            = "bucket-matcher"
    default_service = data.google_compute_backend_service.static.self_link

    path_rule {
      paths   = ["/images/*"]
      service = data.google_compute_backend_bucket.bucket.self_link
    }
  }
}


# =====================================================
# Target HTTPS Proxy
# =====================================================
resource "google_compute_target_https_proxy" "lb_proxy" {
  name             = var.proxy_name
  url_map          = google_compute_url_map.lb_urlmap.self_link
  ssl_certificates = [google_compute_managed_ssl_certificate.lb_cert.self_link]
}


# =====================================================
# Forwarding Rule (FIXED — NO network_tier)
# =====================================================
resource "google_compute_global_forwarding_rule" "lb_forwarding_rule" {
  name                  = var.forwarding_rule_name
  ip_address            = google_compute_global_address.lb_ip.address
  ip_protocol           = "TCP"
  port_range            = "443"
  target                = google_compute_target_https_proxy.lb_proxy.self_link
  load_balancing_scheme = "EXTERNAL_MANAGED"
}
