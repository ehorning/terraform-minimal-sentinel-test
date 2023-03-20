resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.instance_size
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = var.network
  }
}
