provider "tfe" {
  hostname = "app.terraform.io"
  token    = zJKqTmpt9L4S8w.atlasv1.WOHd0ygS9Undzqk1OEolayaZhwyz2KvwC2Hu9wGhvjQN8ug7IfEphaCVcJkMKCWKXMQ
  version  = "~> 0.16.1"
}



resource "tfe_organization" "test" {
  name  = "my-org-name"
  email = "jkaloti@deqode.com"
}

/*resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}*/
