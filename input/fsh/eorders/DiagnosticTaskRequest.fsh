Profile: DiagnosticTaskRequest
Parent: DiagnosticTaskBase
Id: eorders-diagnosticrequesttask
Title: "Diagnostic Task Request"
Description: "Diagnostic Task Request"
* . ^short = "Diagnostic Task Request"
* meta.tag[diagnostic-task] = DiagnosticTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* focus only Reference(EOrdersDiagnosticRequest)
  * ^short = "Diagnostic service this task is related to"
* partOf ..1 MS
* partOf only Reference(DiagnosticTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"