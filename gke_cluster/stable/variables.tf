## --------------------------------------------------------------
## Mandatory variable definitions
## --------------------------------------------------------------

variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID to create resources in."
}

# Default value passed in
variable "gcp_region" {
  type        = string
  description = "Region to create resources in."
}

# Default value passed in
variable "gcp_zone" {
  type        = string
  description = "Zone to create resources in."
}

## --------------------------------------------------------------
## Output variable definitions - Override from Custom Properties 
## --------------------------------------------------------------

# Expected custom_properties key to be declared in `qwiklabs.yaml` 
# with the same name for any lab that uses this script.
variable "gke_cluster_name" {
  type        = string
  description = "GKE Cluster name."
}

# with the same name for any lab that uses this script.
variable "gcp_username" {
  type        = string
  description = "Name of Qwiklabs user"
}


## --------------------------------------------------------------
## Custom variable definitions - Override from Custom Properties
## --------------------------------------------------------------

variable "gke_num_nodes" {
  type        = number 
  description = "number of gke nodes"
  default     = 2 
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

# Custom properties with Addons
## Dont use AddOn - use ASM
variable "gke_istio_disabled" {
  type        = bool
  description = "GKE Istio configuration - false = on"
  default     = false
}

# Custom properties with Addons
variable "gke_istio_auth" {
  type        = string 
  description = "GKE Istio authentication type"
  default     = "AUTH_NONE"
}


# Custom properties with defaults 
variable "gce_machine_image" {
  type        = string
  description = "GCE virtual machine image"
  default     = "debian-cloud/debian-10"
}

# Custom properties with defaults 
variable "gce_machine_type" {
  type        = string
  description = "GCE machine type"
  default     = "n1-standard-1"
}

# Custom properties with defaults 
variable "gce_machine_network" {
  type        = string
  description = "GCE virtual machine network"
  default     = "default"
}

# Custom properties with defaults 
variable "gce_scopes" {
  type        = list(string)
  description = "GCE service account scope"
  # default     = ["https://www.googleapis.com/auth/cloud-platform"]
  default = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
  ]
}

