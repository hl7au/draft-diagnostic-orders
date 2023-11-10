Profile: DiagnosticTaskRequest
Parent: DiagnosticTaskBase
Id: diagnostic-task-request
Title: "Diagnostic Task Request"
Description: "Diagnostic Task Request to track fulfilment of a Diagnostic Request. See [DiagnosticTaskBase](StructureDefinition-diagnostic-task-base.html) for a description of the expected `status` changes."
* . ^short = "Diagnostic Task Request"
* meta.tag[diagnostic-task] = DiagnosticTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* focus only Reference(ERequestsDiagnosticRequestPathology or ERequestsDiagnosticRequestRadiology)
  * ^short = "Diagnostic service this task is related to"
* partOf ..1 MS
* partOf only Reference(DiagnosticTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"