variable "gcp_credentials" {
  type = string
  description = "Location of service account for GCP."
}

variable "gcp_project_id" {
  type = string
  description = "GCP Project id."
}

variable "gcp_region" {
  type = string
  description = "GCP Region."
}

variable "gke_cluster_name" {
  type = string
  description = "GKE Cluster name."
}

variable "gke_node_name" {
  type = string
  description = "GKE node name."
}

variable "gke_node_type" {
  type = string
  description = "GKE node type."
}
variable "gke_zones" {
  type = list(string)
  description = "List of zones for GKE Cluster  ."
}

variable "gke_regional" {
  type = bool
  description = "GKE region flag."
}

variable "gke_network" {
  type = string
  description = "VPC network name."
}

variable "gke_subnetwork" {
  type = string
  description = "VPC subnetwork name."
}

variable "gke_default_nodepool_name" {
  type = string
  description = "GKE default node pool name."
}

variable "gke_service_account_name" {
  type = string
  description = "GKE service account name."
}