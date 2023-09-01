# Define the disk for computation instance
resource "google_compute_disk" "cloud_compute" {
  name  = var.compute_disk_name
  type  = var.compute_disk_type
  zone  = var.zone
  size = var.compute_disk_size
  image = "ubuntu-os-cloud/ubuntu-minimal-2204-jammy-v20230726"
}

# Define the computation instance
resource "google_compute_instance" "google_compute" {
    name = var.compute_name
    zone = var.zone
    tags = ["daily-compute"]

    machine_type = var.compute_machine_type

    network_interface {
        # network = google_compute_network.vpc_network.name
        # subnetwork = google_compute_subnetwork.default.id
        network = "default"
        access_config {
        }
    }
    metadata = {
        ssh-keys = "rwscheng:${file("~/.ssh/id_rsa.pub")}"
    }    

    boot_disk {
      source = google_compute_disk.google_compute.name
    }

    # depends_on = [ google_compute_firewall.ssh-rule ]
}
