provider "aws" {
  access_key = "${file(var.aws_access_key)}"
  secret_key = "${file(var.aws_secret_key)}"
  region     = "us-east-1"
}

# Create a web server
resource "aws_instance" "web" {
  # ...
}