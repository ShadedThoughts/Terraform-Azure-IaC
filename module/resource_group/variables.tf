variable "location" {
  description = "Azure region to use"
  type = string
}

variable "lock_level" {
  description = "Specifies the Level to be used for RG lock. Possible values are Empty (no lock), CanNotDelete and ReadOnly"
  type = string
  default = "CanNotDelete"
}

variable "environment" {
  description = "Project Environment"
  type = string
  default = "Development"
}

variable "extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}