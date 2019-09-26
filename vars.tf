# Configure these variables

variable "sample_var_not_master" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time_not_master" {
  description = "How long our local-exec will take a nap."
  default     = 0
}
