resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'This is a dummy operation.' > ${path.module}/log.txt"
  }
}
