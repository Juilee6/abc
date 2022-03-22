provider "tfe" {
  hostname = "app.terraform.io"
  token    = "lOASyz3vxnk03A.atlasv1.9mpMfPHj3FGSMP321YzKusktK6IIZjQsy5lLt09rP2C2L68H2j04zQdtNZtUQ684ZmA"
  version  = "~> 0.13"
}



resource "tfe_organization" "test-jui" {
  name  = "my-org-name-jui"
  email = "jkaloti@deqode.com"
}

resource "tfe_workspace" "test-jk" {
  name         = "my-workspace-name-jk"
  organization = tfe_organization.test-jui.name
  tag_names    = ["test", "app"]
}
