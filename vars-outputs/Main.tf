resource "local_sensitive_file" "example1" {
  content  = "New state file"
  filename = "${path.module}/${var.filename1}.txt"
  count = 3
}

resource "local_sensitive_file" "example2" {
  content  = "New state file"
  filename = "${path.module}/${var.filename2}.txt"
  count = 3
}

resource "local_sensitive_file" "testexample3" {
  content  = "New state file"
  filename = "${path.module}/${var.filename3}.txt"
  count = var.count_num
}