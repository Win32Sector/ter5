provider "vscale" {
  token = "${file(var.vscale_token)}"
}

# Create a web server
resource "vscale_scalet" "web1" {
  location  = "msk0"
  make_from = "ubuntu_14.04_64_002_master"
  name      = "kozlovpavel1"
  rplan     = "small"
  ssh_keys  = ["${vscale_ssh_key.kozlovkey1.id}"]
}

resource "vscale_ssh_key" "kozlovkey1" {
  name = "kozlovkey1"
  key  = "${file(var.vscale_sshkey)}"
}

output "vscale_ip" {
  value = "${vscale_scalet.web1.public_address}"
}
