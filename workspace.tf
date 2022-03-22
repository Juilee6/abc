resource "tfe_workspace" "test" {
  name         = "jk-testing"
  organization = tfe_workspace.name
  tag_names    = ["test", "app"]
}
