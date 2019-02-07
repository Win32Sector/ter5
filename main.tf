provider "vscale" {
  token = "${file(var.token)}"
}

# Create a web server
resource "vscale_scalet" "web" {
  location  = "msk0"
  make_from = "ubuntu_14.04_64_002_master"
  name      = "kozlovpavel"
  rplan     = "small"
}
