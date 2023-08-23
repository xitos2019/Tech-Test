
variable "subscription_id" {
  type = string
}


# variable "enviornment" {
#   type = string
# }

variable "location" {
    type = string
}

variable "servicebus_namespace" {
    type = string
}

variable "servicebus_sku" {
  type = string
}

variable "servicebus_rg_name" {
    type = string
  
}

variable "servicebus_namespaces" {
  type = list(string)
}

variable "tags" {
  type = object({
    cost_centre = string
    product_name  = string
  })
  description = "tags to put on created resources"
}

variable "servicebus_queue_names" {
  type = list(string)
}