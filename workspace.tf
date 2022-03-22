/*resource "tfe_organization" "tf-cloud-testing" {
  name  = "tf-cloud-testing1"
  email = "jkaloti@deqode.com"
}

resource "tfe_workspace" "test" {
  name         = "jk-testing"
  organization = tfe_organization.tf-cloud-testing.name
  tag_names    = ["test", "app"]
}*/
terraform {
  backend "remote" {
    organization = tfe_organization.tf-cloud-testing

    workspaces {
      name = "my-workspace-name1"
    }
  }

//  required_version = "~> 0.14"
}

resource "tfe_organization" "my_tf_cloud_org" {
  name  = "my-tf-cloud-org"
  email = "jkaloti@deqode.com"
 // collaborator_auth_policy = "two_factor_mandatory"
}
