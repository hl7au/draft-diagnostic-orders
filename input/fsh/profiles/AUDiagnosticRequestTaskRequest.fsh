Profile: AUDiagnosticRequestTaskRequest
Parent: AUDiagnosticRequestTaskBase
Id: au-diagnosticrequest-task-request
Title: "AU Diagnostic Request Task Request"
Description: "Diagnostic Request Task Request"
* . ^short = "Diagnostic Request Task Request"
* meta.tag[task-tag] = $diagnosticrequest-tasktag#fulfillment-task
  * ^short = "fulfillment-task"
* focus 1..1 MS
* focus only Reference(AUDiagnosticRequestServiceRequest)
  * ^short = "ServiceRequest this task is related to"
* partOf ..1 MS
* partOf only Reference(AUDiagnosticRequestTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"