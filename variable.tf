variable "public_ip_list" {
  type        = list(any)
  default     = []
  description = "list of public ip objects "
}

variable "resource_group_output" {
  type        = map(any)
  default     = {}
  description = "list of resource group objects "
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resources if not any"
}
