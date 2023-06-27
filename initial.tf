
resource "jenkins_job" "initial-jobs" {
    name     = "All-Jobs-setup"
    template = templatefile("${path.module}/initial.xml", {
        repo_url=var.all_repo
        name     = "All-Jobs-setup"
        filename="Jobs-setup"

        description = "Roboshop Pipeline for Infra"
    })

    lifecycle {
      ignore_changes = [ template ]
    }
}