variable "direct_connect_id" {
  type = list(string)
}

variable "alarm_actions" {
  description = "List of alarm actions. For instance SNS topic ARN."
  type        = list(string)
}

variable "evaluation_periods" {
  description = "Number of evaluation periods to that have to be out of band for the alarm to be raised."
  type        = number
  default     = 2
}

variable "period" {
  description = "How long (in seconds) is each period."
  type        = number
  default     = 120
}