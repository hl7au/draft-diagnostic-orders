Profile: ERequestTaskRequest
Parent: ERequestTaskBase
Id: erequest-task-request
Title: "Diagnostic Task Request"
Description: "Diagnostic Task Request to track fulfilment of a Diagnostic Request. See [DiagnosticTaskBase](StructureDefinition-diagnostic-task-base.html) for a description of the expected `status` changes."
* . ^short = "Diagnostic Task Request"
* meta.tag[diagnostic-task] = ERequestTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* focus only Reference(ERequestDiagnosticRequestPathology or ERequestDiagnosticRequestRadiology)
  * ^short = "Diagnostic service this task is related to"
* partOf ..1 MS
* partOf only Reference(ERequestTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"