resource "jenkins_folder" "roboshop_folder" {
    count = length(var.folder_name)
    name = element(var.folder_name, count.index)
}

resource "jenkins_job" "s-jobs" {
    depends_on = [ jenkins_folder.roboshop_folder]
    count = length(var.s-jobs)
    name     = lookup(element(var.s-jobs, count.index), "name")
    folder   = lookup(element(var.s-jobs, count.index), "folder")
    template = templatefile("${path.module}/s-jobs.xml", {
        repo_url=lookup(element(var.s-jobs, count.index), "repo_url")
        name     = lookup(element(var.s-jobs, count.index), "name")
        description = "Roboshop Pipeline for Infra"
    })

    lifecycle {
      ignore_changes = [ template ]
    }
}

