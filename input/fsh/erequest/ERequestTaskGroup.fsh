Profile: ERequestTaskGroup
Parent: ERequestTaskBase
Id: erequest-task-group
Title: "Diagnostic Task Group"
Description: "This Task is the parent Task to a group of [ERequestTaskRequest](StructureDefinition-erequest-task-request.html) fulfilment Tasks for ServiceRequests."
* . ^short = "Diagnostic Task Group"
* meta.tag[diagnostic-task] = ERequestTaskTag#diagnostic-task-group
  * ^short = "diagnostic-task-group"
* partOf 0..0
* focus ..1 MS
* focus only Reference(ERequestRequestGroup)
  * ^short = "Diagnostic service group this task is related to"
