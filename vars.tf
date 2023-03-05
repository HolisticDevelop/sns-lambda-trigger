variable "aws_region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "inline_policies" {
  description = "Optional additional inline IAM policy documents."
  type        = list(string)
  default     = []
}

variable "attachments" {
  description = "Optional additional attached IAM policy ARNs."
  type        = list(string)
  default     = []
}

variable "name" {
  description = "IAM role name."
  default = "iam_role_lambda"
}

variable "topic_name" {
  description = "Topic's name"
  type = string
  default = "datasync-topic"
}

variable "entrypoint" {
  description = "Script file and entrypoint function"
  type = string
}

variable "runtime" {
  description = "Language & version"
  type = string
  default = "python3.9"
}

variable "function_name" {
  description = "Lambda name"
  type = string
  default = "sre-lambda-handler"
}

variable "payload" {
  description = "Path to script file in zip format"
  type = string
}