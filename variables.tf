variable "prefix" {
  type        = list(string)
  default     = []
    validation {
    condition     = ([] || [can(regex("^[0-9a-z]+$", var.prefix))])
    error_message = "Prefix can contain only digits and lower case letters"
  }
  description = "It is not recommended that you use prefix by azure you should be using a suffix for your resources."
}

variable "suffix" {
  type        = list(string)
  default     = []
  validation {
    condition     = ([] || [can(regex("^[0-9a-z]+$", var.suffix))])
    error_message = "Suffix can contain only digits and lower case letters"
  }
  description = "It is recommended that you specify a suffix for consistency. please use only lowercase characters when possible"
}

variable "unique-seed" {
  description = "Custom value for the random characters to be used"
  type        = string
    validation {
    condition     = ( "" || can(regex("^[0-9a-z]+$", var.unique-seed)))
    error_message = "Unique seed can contain only digits and lower case letters"
  }
  default     = ""
}

variable "unique-length" {
  description = "Max length of the uniqueness suffix to be added"
  type        = number
  default     = 4
}

variable "unique-include-numbers" {
  description = "If you want to include numbers in the unique generation"
  type        = bool
  default     = true
}
