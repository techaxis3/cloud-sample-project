# Cloud Architecture (Demo)

This document describes a simple demo cloud architecture used for demonstration purposes only.

## High-level overview
- Single S3 bucket to store artifacts (demo only).
- Terraform used as the infrastructure-as-code tool.
- A bootstrap script (`/scripts/setup.sh`) demonstrates how a local machine could prepare for infra deployment.

## Components
- **S3 Bucket** — Stores demo artifacts. In a real architecture you might have:
  - VPC
  - EC2 instances / ECS / Lambda
  - RDS or other managed databases
  - IAM roles and policies
  - Monitoring and logging (CloudWatch, ELK)

## Security notes
- Replace placeholder names and remove demo credentials before running.
- Use least-privilege IAM roles.
- Do not expose access keys in repository files.

## Next steps (for a real project)
1. Add Terraform modules for VPC, compute, and database.
2. Add CI/CD pipeline to run `terraform fmt`, `terraform plan`, and `terraform apply` in a safe environment.
3. Add tests and cost controls.
