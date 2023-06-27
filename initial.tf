
resource "jenkins_job" "-jobs" {
    name     = "All-Jobs-setup"
    template = templatefile("${path.module}/initial.xml", {
        repo_url=var.all_repo
        name     = "All-jobs"
        filename="Jobs-setup"

        description = "Roboshop Pipeline for Infra"
    })

    lifecycle {
      ignore_changes = [ template ]
    }
}