provider "google" {
  project     = "${var.project_name}"
  region      = "${var.region}"
  credentials = "${file("./creds/serviceaccount.json")}"
}
module "infra" {
  source                = "./modules/infra"
  region                = "${var.region}"
  zone1                 = "${var.zone1}"
  zone2                 = "${var.zone2}"
  project_name          = "${var.project_name}"
  public_subnet         = "${var.public_subnet}"
  private_subnet        = "${var.private_subnet}"
  org_id                = "${var.org_id}"
}
