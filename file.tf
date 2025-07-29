resource "local_file" "foo" {
  source  = "/home/kavi/all_files/demo.sh"
  filename = "a/b/c/d/foo.bar"
}


resource "random_string" "random" {
  length           = 25
}
