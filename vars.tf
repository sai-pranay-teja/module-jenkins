variable "env"{
    default="dev"
}
variable "domain_name" {
    default="practise-devops.online"
  
}

variable "folder_name"{
    default=["Infra-folder", "CI-Pipeline"]
}

variable "m-jobs" {
    default=[
        
        {name="frontend", repo_url="https://github.com/sai-pranay-teja/frontend", folder="CI-Pipeline"},
        {name="cart", repo_url="https://github.com/sai-pranay-teja/cart", folder="CI-Pipeline"},
        {name="catalogue", repo_url="https://github.com/sai-pranay-teja/catalogue",  folder="CI-Pipeline"},
        {name="shipping", repo_url="https://github.com/sai-pranay-teja/shipping", folder="CI-Pipeline"},
        {name="user", repo_url="https://github.com/sai-pranay-teja/user", folder="CI-Pipeline"},
        {name="payment", repo_url="https://github.com/sai-pranay-teja/payment", folder="CI-Pipeline"},
        {name="aws-param", repo_url="https://github.com/sai-pranay-teja/aws-params", folder="CI-Pipeline"}
    ] 
}


variable "s-jobs" {
    default=[
        {name="Infra", repo_url="https://github.com/sai-pranay-teja/roboshop-terraform", folder="Infra-folder"},
        {name="Ansible-Deployment", repo_url="https://github.com/sai-pranay-teja/roboshop-ansible", folder="Infra-folder"}
    ] 
}