output "lb_ip" {
  value = google_compute_global_address.lb_ip.address
}

output "url_map" {
  value = google_compute_url_map.lb_urlmap.self_link
}

output "https_proxy" {
  value = google_compute_target_https_proxy.lb_proxy.self_link
}

output "forwarding_rule" {
  value = google_compute_global_forwarding_rule.lb_forwarding_rule.self_link
}
