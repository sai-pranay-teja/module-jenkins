resource "jenkins_folder" "all_jobs" {
  name        = "all_jobs"
  description = "Folder for creation of all jobs"
}



resource "jenkins_job" "initial-jobs" {
    depends_on = [ jenkins_folder.all_jobs ]
    name     = "All-Jobs-setup"
    folder="/job/all_jobs"
    template = templatefile("${path.module}/initial.xml", {
        all_repo=var.all_repo
        name     = "All-Jobs-setup"
        filename="All-jobs-setup"
        description = "Roboshop Pipeline for Infra"
    })

    lifecycle {
      ignore_changes = [ template ]
    }
}