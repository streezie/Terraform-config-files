resource "local_file" "example1" {
  content  = "foo!"
  filename = "${path.module}/${var.filename-1}.txt"
  count = var.count_example1
}


locals {
  environment = "dev" #created an environment called dev
  upper_case = upper(local.environment) #converted the environment to upper
  base_path = "${path.module}/configs/${local.upper_case}" #append the upper case to the base path 
}


resource "local_file" "service_configs" {
    filename = "${local.base_path}/server.sh"
    content = <<EOT
    environment = ${local.environment}
    EOT 
}