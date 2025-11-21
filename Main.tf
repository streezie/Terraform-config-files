resource "local_file" "foo" {
  content  = "new test class!"
  filename = "${path.module}/${count.index}.txt"
  count = 3
}

