
resource "terraform_data" "workflow_demo" {
  input = {
    message     = var.message
    environment = var.environment
  }
}