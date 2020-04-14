# Create an arbitrary local resource
data "template_file" "test_folder" {
  template = "Hello, I am a template. My sample_var value = $${sample_var}+1232"

  vars {
    sample_var = "${var.sample_var_branch}"
  }
}

resource "null_resource" "sleep_folder" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time_branch}"
  }
}
