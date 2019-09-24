resource "google_container_cluster" "primary" {
  project            = "${var.project_name}"
  name               = "tools-cluster"
  network            = "default"
  location           = "${var.zone1}"
  initial_node_count = "2"

  node_locations = [
    "${var.zone2}",
  ]

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    machine_type = "n1-standard-1"
  }

    ip_allocation_policy {
    create_subnetwork = true
    }
  }


