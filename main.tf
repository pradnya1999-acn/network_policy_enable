provider "google" {
#   version = "= 3.55.0"
  credentials = var.sa_key
  project = "parabolic-base-409505"
}
 
variable "sa_key" {
  default =  ""
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"


    network_policy {
    enabled  = false
    provider = "CALICO"
  }
}
