# Azure AVD Terraform Deployment

This repository contains Terraform and Azure DevOps pipeline configuration for deploying Azure Virtual Desktop (AVD) infrastructure.

## Files

- `azure-pipelines.yml` - Azure DevOps pipeline that runs Terraform init, plan, and apply.
- `.gitignore` - Ignores Terraform state, local override files, editor settings, and sensitive files.

## Pipeline environments

The pipeline supports separate environments via the `targetEnvironment` parameter:

- `dev`
- `staging`
- `prod`

Each environment uses a distinct Terraform backend key:

- `terraform-dev.tfstate`
- `terraform-staging.tfstate`
- `terraform-prod.tfstate`

## Usage

1. Configure the Azure service connection name in `azure-pipelines.yml`:

```yaml
variables:
  azureServiceConnection: 'YOUR-SERVICE-CONNECTION-NAME'
```

2. Set your backend storage details in `azure-pipelines.yml`.

3. Commit and push the repo to GitHub or Azure DevOps.

4. In Azure DevOps, run the pipeline and select the target environment.

## Notes

- `Terraform Apply` is configured to require manual approval for `staging` and `prod`, while `dev` is allowed automatically.
- Do not commit Terraform state files or sensitive variable files.
