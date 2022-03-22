resource "tfe_workspace" "test" {
  name         = "my-workspace-name"
  organization = tfe-cloud-testing
  tag_names    = ["test", "app"]
}
