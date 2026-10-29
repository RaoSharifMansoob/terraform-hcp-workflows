# HCP Terraform Workflows

A hands-on learning repository for HashiCorp Cloud Platform (HCP) Terraform, GitHub integration, remote execution, remote state management, and pull-request-based infrastructure workflows.

## Learning Objectives

- Understand HCP Terraform organizations and workspaces.
- Connect a GitHub repository to an HCP Terraform workspace.
- Run speculative plans on pull requests.
- Configure run triggers and approval workflows.
- Understand remote state and secure AWS authentication.
- Progress toward production-style infrastructure delivery using Terraform.

## Labs

| Lab | Objective |
|---|---|
| `01-hcp-vcs-workflow` | Learn the HCP Terraform VCS workflow using a harmless Terraform resource. |

## Safety Principles

- Keep this repository separate from existing infrastructure projects.
- Never commit credentials, Terraform state, or sensitive variable files.
- Review Terraform plans before approving changes.
- Avoid provisioning billable cloud infrastructure until the relevant lab requires it.