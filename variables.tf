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

variable "attach_policy_arns" {
  description = "Existing policy ARNs to attach to the IAM user"
  default     = []
}

variable "tags" {
  description = "Tags of the resource"
  type    = map(string)
  default = null
}
variable "policy" {
  description = "Policy to attach Iam User"
  type        = string
  default     = null
  
}

