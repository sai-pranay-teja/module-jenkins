variable "env"{
    default="dev"
}
variable "domain_name" {
    default="practise-devops.online"
  
}

variable "folder_name"{
    default=["Infra-folder", "CI-Pipeline"]
}

variable "s-jobs" {
    default=[
        {name="Infra", repo_url="https://github.com/sai-pranay-teja/roboshop-terraform", filename="Infra-setup", folder="Infra-folder"}
    ] 
}