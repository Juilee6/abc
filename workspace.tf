resource "tfe_organization" "test-organization" {
  name  = "jk-testorg"
  email = "jkaloti@deqode.com"
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}
