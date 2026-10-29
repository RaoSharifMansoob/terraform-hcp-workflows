# HCP Terraform Workflows

A hands-on implementation project for learning and demonstrating **HCP Terraform**, GitHub VCS integration, remote execution, and remote state management.

> 📖 **Detailed Guide:** [HCP Terraform Complete Guide — DevOps Handbook](https://github.com/RaoSharifMansoob/DevOps-Handbook/blob/main/Infrastructure_as_Code/HCP_Terraform/HCP_Terraform_Complete_Guide.md#6-hcp-terraform-workflows)

## Objective

The objective of this project is to understand how HCP Terraform can be integrated with GitHub to manage Terraform configuration, execute Terraform remotely, manage state centrally, and eventually build a complete Git-driven infrastructure workflow.

---

## What We Have Implemented

### HCP Terraform VCS Workflow

The initial HCP Terraform workflow has been implemented using a dedicated GitHub repository and HCP Terraform workspace.

So far, we have:

- Created an HCP Terraform organization.
- Created a dedicated HCP Terraform workspace.
- Connected the workspace with GitHub using VCS integration.
- Restricted HCP Terraform access to the required repository only.
- Configured the Terraform working directory.
- Enabled remote Terraform execution.
- Disabled auto-apply to maintain manual approval over infrastructure changes.
- Created and executed our first Terraform plan through HCP Terraform.
- Successfully applied the planned changes through HCP Terraform.
- Established HCP Terraform as the remote state backend for this workspace.

The current lab intentionally uses Terraform's built-in `terraform_data` resource so that the HCP Terraform workflow can be tested without provisioning unnecessary AWS resources.

```text
examples/
└── 01-hcp-vcs-workflow/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

---

## Current Workflow

The workflow implemented so far is:

```text
GitHub Repository
       ↓
HCP Terraform Workspace
       ↓
Remote Terraform Execution
       ↓
Terraform Plan
       ↓
Manual Approval
       ↓
Terraform Apply
       ↓
Remote State
```

This establishes the foundation for the more complete infrastructure workflow that will be implemented in the upcoming stages.

---

## Future Implementation

In the next stages, this project will evolve into a complete **Git-driven Terraform workflow**.

We will introduce feature branches and Pull Requests, where Terraform changes will be reviewed through GitHub and HCP Terraform will generate speculative plans for those changes. After code review and merging, HCP Terraform will execute the final Terraform plan and require controlled approval before applying the infrastructure changes.

The project will then expand into additional HCP Terraform capabilities such as secure AWS authentication, Terraform variables and sensitive values, run triggers, workspace dependencies, policy enforcement, and production-oriented infrastructure workflows.

The final goal is to understand and demonstrate how HCP Terraform can be used as part of a secure, collaborative, and production-ready **Infrastructure as Code delivery process**.

---

## Security Principles

- Follow least-privilege access for GitHub and cloud resources.
- Never commit credentials, secrets, or Terraform state files.
- Keep existing infrastructure projects separate from this learning environment.
- Review Terraform plans before applying changes.
- Keep auto-apply disabled while implementing controlled workflows.
- Prefer secure, short-lived authentication mechanisms for cloud access.

---

## Repository Structure

```text
terraform-hcp-workflows/
│
├── README.md
├── .gitignore
│
└── examples/
    └── 01-hcp-vcs-workflow/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```