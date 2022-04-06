#Cloud Storage
resource "google_storage_bucket" "image-store-1" {
  name     = "cf-random-leszek-image-store-bucket-1"
  location = "europe-north1"
}

# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "terra-leszek-gke"
  location = "asia-southeast1-a"
  
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}
