resource "tfe_workspace"  {
  name         = "my-workspace-name"
  organization = tfe-cloud-testing
  tag_names    = ["test", "app"]
}
