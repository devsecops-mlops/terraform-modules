variable "name" {
  type        = string
  description = "Specifies the name of the EventGrid Topic."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "input_schema" {
  type        = string
  description = "Specifies the schema in which incoming events will be formatted (EventGridSchema, CloudEventSchemaV1_0, CustomEventSchema)."
  default     = "EventGridSchema"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
