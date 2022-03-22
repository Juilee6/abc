provider "tfe" {
  hostname = "app.terraform.io"
  token    = "lOASyz3vxnk03A.atlasv1.9mpMfPHj3FGSMP321YzKusktK6IIZjQsy5lLt09rP2C2L68H2j04zQdtNZtUQ684ZmA"
  version  = "~> 0.13"
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
