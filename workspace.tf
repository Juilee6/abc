resource "tfe_workspace" "test" {
  name         = "jk-testing"
  organization = tfe_workspace.test.name
  tag_names    = ["test", "app"]
}
