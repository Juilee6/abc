resource "tfe_organization" "test-organization" {
  name  = "my-org-name"
  email = "jkaloti@deqode.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}
