
resource "jenkins_job" "s-jobs" {
    count = length(var.s-jobs)
    name     = lookup(element(var.s-jobs, count.index), "name")
    template = templatefile("${path.module}/initial.xml", {
        repo_url=var.all_repo
        name     = "Infra"
        filename="Infra-Setup"

        description = "Roboshop Pipeline for Infra"
    })

    lifecycle {
      ignore_changes = [ template ]
    }
}