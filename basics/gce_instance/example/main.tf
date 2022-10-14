# GCE:    Virtual Machine
# Local:  modules/[channel]
# Remote: github.com://CloudVLab/terraform-lab-foundation//[module]/[channel]

# Module: Google Compute Engine
module "la_gce" {
  source = "https://github.com/annasochandure-tudip/terraform-lab-foundation/tree/Terraform-vm-update/basics/gce_instance/example/gce_instance/stable"

  # Pass values to the module
  gcp_project_id = var.gcp_project_id
  gcp_region     = var.gcp_region
  gcp_zone       = var.gcp_zone
  gcp_username   = var.tfUsername

  # Customise the GCE instance
  gce_name            = var.tfResourceName
  #gce_region          = "us-central1"
  #gce_zone            = "us-central1-a"
  #gce_machine_type    = "e2-micro"
  #gce_tags            = ["lab-vm"]
  #gce_machine_image   = "debian-cloud/debian-10"
  gce_machine_network = "default"
  #gce_machine_network = google_compute_subnetwork.dev_subnet.name
  #gce_scopes          = ["cloud-platform"]
  #gce_service_account = "default"
  #gce_startup_script   = "${file("./scripts/lab-init")}"
  network_ip = var.ip
}
