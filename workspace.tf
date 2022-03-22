resource "tfe_organization" "tf-cloud-testing" {
  name  = "tf-cloud-testing"
  email = "jkaloti@deqode.com"
}

resource "tfe_workspace" "test" {
  name         = "jk-testing"
  organization = tfe_organization.tf-cloud-testing.name
  tag_names    = ["test", "app"]
}
