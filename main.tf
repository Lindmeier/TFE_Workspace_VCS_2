data "terraform_remote_state" "workspace1" {
  backend = "remote"
  config = {
    organization = "team-automation"
    workspaces = {
      name = "TFE_Workspace_VCS_1"
    }
  }
}

output "durchgereicht"{
  value = data.terraform_remote_state.workspace1.outputs.test
}
 