resource "aws_ssm_parameter" "user" {
    name  = "jenkins_user"
    type  = "SecureString"
    value = "admin1"
}

resource "aws_ssm_parameter" "pass" {
    name  = "jenkins_pass"
    type  = "SecureString"
    value = "RoboShop@123"
}
