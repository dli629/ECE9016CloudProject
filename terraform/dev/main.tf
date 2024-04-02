

resource "google_container_cluster" "primary" {
  name     = var.gke_cluster_name
  location = "us-central1"
  deletion_protection = false

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.gke_default_nodepool_name
  cluster    = google_container_cluster.primary.id
  location  = "us-central1-a"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.gke_node_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = var.gke_service_account_name #google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
     # Add label to node
    labels = {
      role = "db"
      role = "web"
    }
  }
}