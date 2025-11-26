resource "local_sensitive_file" "test" {
  content  = "New state file"
  filename = "${path.module}/sensitive.txt"
}

