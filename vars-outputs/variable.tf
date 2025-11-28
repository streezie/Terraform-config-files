#This is an input variable using to input value into the main.tf file
variable "filename1" {
  description = "this is the name of file"
  type        = string
  default     = "example1"
}

#This is an input variable using to input value into the main.tf file
variable "filename2" {
  description = "this is the name of file"
  type        = string
  default     = "example2"
}

#This is an input variable using to input value into the main.tf file
variable "filename3" {
  description = "this is the name of file"
  type        = string
  default     = "example3"
}

#This is an input variable using to input value into the main.tf file
variable "count_num" {
  description = "Number of instances to provision."
  type        = number
  default     = 2
}