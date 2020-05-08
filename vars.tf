# Configure these variables

variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 0
}


variable "sample_var_list" {
  description = "How long our local-exec will take a nap."
  type = "list"
  default     = ["test1","test2"]
}

variable "sample_var_map" {
  description = "How long our local-exec will take a nap."
  type = "map"
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

