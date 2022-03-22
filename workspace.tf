resource "tfe_organization" "test-organization" {
  name  = "my-org-name"
  email = "jkaloti@deqode.com"
  tfc_token = zJKqTmpt9L4S8w.atlasv1.WOHd0ygS9Undzqk1OEolayaZhwyz2KvwC2Hu9wGhvjQN8ug7IfEphaCVcJkMKCWKXMQ
}

resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe_organization.test-organization.name
  tag_names    = ["test", "app"]
}
