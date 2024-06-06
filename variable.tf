variable "external_port" {
  description = "The external port for the container"
  type        = number
  default     = 8080
  validation {
    condition = can(regex("8080|80", var.external_port))
    error_message = "value must be 8080 or 80"
  }
}