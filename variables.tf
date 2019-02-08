variable "aws_access_key" {
  description = "Path to access key"
  default     = "aws_access_key"
}

variable "aws_secret_key" {
  description = "Path to secret key"
  default     = "aws_secret_key"
}

variable "vscale_sshkey" {
  description = "Path to token"
  default     = "~/.ssh/appuser.pub"
}

variable "vscale_token" {
  description = "Path to token"
  default     = "vscale_token"
}
