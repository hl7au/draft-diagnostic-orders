Profile: DiagnosticTaskGroup
Parent: DiagnosticTaskBase
Id: diagnostic-task-group
Title: "Diagnostic Task Group"
Description: "This Task is the parent Task to a group of [DiagnosticTaskRequest](StructureDefinition-diagnostic-task-request.html) fulfilment Tasks for ServiceRequests."
* . ^short = "Diagnostic Task Group"
* meta.tag[diagnostic-task] = DiagnosticTaskTag#diagnostic-task-group
  * ^short = "diagnostic-task-group"
* partOf 0..0
* focus 0..0
