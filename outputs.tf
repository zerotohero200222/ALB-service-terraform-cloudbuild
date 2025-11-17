output "lb_ip" {
  value = google_compute_global_address.lb_ip.address
}

output "ssl_certificate_status" {
  value = google_compute_managed_ssl_certificate.lb_cert.managed[0].status
}

output "url_map" {
  value = google_compute_url_map.lb_urlmap.self_link
}

output "forwarding_rule" {
  value = google_compute_global_forwarding_rule.lb_forwarding_rule.self_link
}
