variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the IAM user"
}

variable "path" {
  description = "Path of the IAM user"
  default     = "/"
}

variable "inline_policies" {
  description = "Inline defined policies to attach to the IAM user"
  default     = []
}

variable "custom_policies" {
  description = "Custom policies to create and attach to the IAM user"
  default     = []
}

variable "attach_policy_arns" {
  description = "Existing policy ARNs to attach to the IAM user"
  default     = []
}

variable "tags" {
  description = "Tags applied to all resources"
  default     = {}
}
variable "policy" {
  default = []
  
}

