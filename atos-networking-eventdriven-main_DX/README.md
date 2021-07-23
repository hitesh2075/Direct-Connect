# Instructions

This is a template repo for new modules and services.

Any any data requirements to data.tf
Add the resources to main.tf
 - for tags always add 'tags = module.tags.tags' to each resource to get the mandatory tags
 - Amend the line atos_managed     = "AtosXXX", to whatever the service is, inline with the the tagging convention in the HLA, e.g. for SNS topic it is replaced to atos_managed     = "AtosSNS"
Add any outputs to outputs.tf, ensuring they have a description for the auto entries into this file
Add any variables to variables.tf, ensuring they have a description for the auto entries into this file
 - Note - optional variables should have default = null, not ""
 - vars should be lowercase_with_underscores
Update versions.tf with any additional providers or updated versions of terraform or the AWS provider

Delete above this line when used

# repo-name

Give summary of repo purpose here and provider links to resources used o Terraform website, e.g. for GuradDuty Member - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member

# Examples

```hcl
module "example" {
  source            = "github.com/GLB-CES-PublicCloud/repo-name"

  #Fill in parameters here
}

```

# Usage
<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.0 |
| aws | >= 3.20.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment\_tag | Tag of the environment the components is associated with | `string` | n/a | yes |
| name | Name of the component | `string` | n/a | yes |
| pipeline\_tag | GitHub action pipeline ID information, auto generated.  Where testing locally or in break glass situations use local, time and date instead, e.g. local-1805-19022021 | `string` | n/a | yes |
| service\_tag | Tag of the service the components is associated with | `string` | n/a | yes |
| tags | A map of tags to add to IAM role resources | `map(string)` | `{}` | no |
| team\_tag | Tag of the team that manages the solution | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| tags | Tags as a map |
| tags\_no\_name | Tags as a map (excludes Name key) |

<!--- END_TF_DOCS --->
