# Qwiklabs Mandatory Values
variable "gcp_project_id" {
  type = string
}

variable "gcp_region" {
  type = string
}

variable "gcp_zone" {
  type = string
}

# Source Repo
variable "source_repo_name" {
  type    = string
  default = "https://github.com/rosera/tts-modules"
}

# Source Repo
variable "source_repo_branch" {
  type    = string
  default = "main"
}


variable "ip" {
  type        = string
  default = "10.128.0.4"
}
