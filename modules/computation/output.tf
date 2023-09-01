# Output the ip of instance

output "instance_ip" {
  value = google_compute_instance.google_compute.network_interface.0.network_ip
}