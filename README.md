<!-- Update the title to match the module name and add a description -->
# Terraform IBM Module Template

<!-- UPDATE BADGE: Update the link for the badge below-->
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![latest release](https://img.shields.io/github/v/release/terraform-ibm-modules/terraform-ibm-icse-vpc-address-prefix?logo=GitHub&sort=semver)](https://github.com/terraform-ibm-modules/terraform-ibm-icse-vpc-address-prefix/releases/latest)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)

<!-- Remove the content in this H2 heading after completing the steps -->

## Submit a new module

:+1::tada: Thank you for taking the time to contribute! :tada::+1:

This template repository exists to help you create Terraform modules for IBM Cloud.

The default structure includes the following files:

- `README.md`: A description of the module
- `main.tf`: The logic for the module
- `version.tf`: The required terraform and provider versions
- `variables.tf`: The input variables for the module
- `outputs.tf`: The values that are output from the module

For more information, see [Module structure](https://terraform-ibm-modules.github.io/documentation/#/module-structure) in the project documentation.

You can add other content to support what your module does and how it works. For example, you might add a `scripts/` directory that contains shell scripts that are run by a `local-exec` `null_resource` in the Terraform module.

Follow this process to create and submit a Terraform module.

### Create a repo from this repo template

1.  Create a repository from this repository template by clicking `Use this template` in the upper right of the GitHub UI.

    For more information about creating a repository from a template, see the [GitHub docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
1.  Select `terraform-ibm-modules` as the owner.
1.  Enter a name for the module in format `terraform-ibm-<NAME>`, where `<NAME>` reflects the type of infrastructure that the module manages.

    Use hyphens as delimiters for names with multiple words (for example, terraform-ibm-`activity-tracker`).
1.  Provide a short description of the module.

    The description is displayed under the repository title on the [organization page](https://github.com/terraform-ibm-modules) and in the **About** section of the repository. Use the description to help users understand what your repo does by looking at the description.

### Clone the repo and set up your development environment

Locally clone the new repository and set up your development environment by completing the tasks in [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.

### Update the Terraform files

Implement the logic for your module by updating the `main.tf`, `version.tf`, `variables.tf`, and `outputs.tf` Terraform files. For more information, see [Creating Terraform on IBM Cloud templates](https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-create-tf-config).

### Create examples and tests

Add one or more examples in the `examples` directory that consume your new module, and configure tests for them in the `tests` directory.

### Update the content in the readme file

After you implement the logic for your module and create examples and tests, update this readme file in your repository by following these steps:

1.  Update the title heading and add a description about your module.
1.  Update the badge links.
1.  Remove all the content in this H2 heading section.
1.  Complete the [Usage](#usage), [Required IAM access policies](#required-iam-access-policies), and [Examples](#examples) sections. The [Requirements](#requirements) section is populated by a pre-commit hook.

### Commit your code and submit your module for review

1.  Before you commit any code, review [Contributing to the IBM Cloud Terraform modules project](https://terraform-ibm-modules.github.io/documentation/#/contribute-module) in the project documentation.
1.  Create a pull request for review.

### Post-merge steps
After the first PR for your module is merged, follow these post-merge steps:

1.  Create a PR to enable the upgrade test by removing the `t.Skip` line in `tests/pr_test.go`.

<!-- Remove the content in this previous H2 heading -->

## Usage

<!--
Add an example of the use of the module in the following code block.

Use real values instead of "var.<var_name>" or other placeholder values
unless real values don't help users know what to change.
-->

```hcl

```

## Examples

- [Examples](examples/default/)
<!-- END EXAMPLES HOOK -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | >=1.49.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_address_prefixes"></a> [address\_prefixes](#module\_address\_prefixes) | ./config_modules/list_to_map | n/a |
| <a name="module_prefix_map"></a> [prefix\_map](#module\_prefix\_map) | ./config_modules/list_to_map | n/a |

### Resources

| Name | Type |
|------|------|
| [ibm_is_vpc_address_prefix.address_prefixes](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/is_vpc_address_prefix) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | IP range that will be defined for the VPC for a certain location. Use only with manual address prefixes. | <pre>object({<br>    zone-1 = optional(list(string))<br>    zone-2 = optional(list(string))<br>    zone-3 = optional(list(string))<br>  })</pre> | <pre>{<br>  "zone-1": null,<br>  "zone-2": null,<br>  "zone-3": null<br>}</pre> | no |
| <a name="input_dev_mode"></a> [dev\_mode](#input\_dev\_mode) | Enable resource creation with no vpc\_id | `bool` | `false` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix that you would like to append to your resources | `string` | `"icse-dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region where VPC is provisioned | `string` | `"eu-de"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where address prefixes will be created | `string` | `null` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_list"></a> [list](#output\_list) | List of Address Prefix Objects |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- Leave this section as is so that your module has a link to local development environment set up steps for contributors to follow -->

## Contributing

You can report issues and request features for this module in the [terraform-ibm-issue-tracker](https://github.com/terraform-ibm-modules/terraform-ibm-issue-tracker/issues) repo. See [Report an issue or request a feature](https://github.com/terraform-ibm-modules/.github/blob/main/.github/SUPPORT.md).

To set up your local development environment, see [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.
