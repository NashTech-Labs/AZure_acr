variable "resourceLocation" {
  type        = string
  description = "Specifies the region in which to create the aks."
  default     = "ue"
}

variable "domain" {
  type        = string
  default     = "sp"
}

variable "resourceType" {
  type        = string
  default     = "compute"
}

variable "environmentKey" {
  type        = string
  default     = "DevAKS"
  description = "Optional Input - Value to describe the environment. Used for tagging. (Default: DevAKS)"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "service_tiers" {
  type        = string
  description = "It provides different options of capacity and usage pattern in private Docker registry"
  default = "Basic"
}
