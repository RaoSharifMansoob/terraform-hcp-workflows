
variable "message" {
  description = "Message used to test the HCP Terraform workflow."
  type        = string
  default     = "Hello from HCP Terraform"
}

variable "environment" {
  description = "Environment label for this learning exercise."
  type        = string
  default     = "learning"
}
