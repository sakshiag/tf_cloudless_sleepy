# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. My sample_var value = $${sample_var}+1234"

  vars {
    sample_var = "${var.sample_var}"
  }
}

resource "null_resource" "sleep" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}

resource "null_resource" "sleep1" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "echo ${var.sample_var_list[0]}"
  }
}

variable "SCHEMATICSLOCATION" {}
