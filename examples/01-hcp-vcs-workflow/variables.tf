
output "workflow_message" {
  description = "Message stored by the Terraform resource."
  value       = terraform_data.workflow_demo.output.message
}

output "workflow_environment" {
  description = "Environment label stored by the resource."
  value       = terraform_data.workflow_demo.output.environment
}
