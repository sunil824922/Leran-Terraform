resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello from Module - Input - ${var.input}"
  }
}

variable "input" {}


#resource "null_resource" "nothing2" {
#  provisioner "local-exec" {
#    command = "echo hello from module"
#  }
#}
#
#resource "null_resource" "nothing3" {
#  provisioner "local-exec" {
#    command = "echo hello from module"
#  }
#}