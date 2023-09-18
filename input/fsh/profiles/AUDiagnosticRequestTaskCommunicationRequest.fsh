Profile: AUDiagnosticRequestTaskCommunicationRequest
Parent: AUDiagnosticRequestTaskBase
Id: au-diagnosticrequest-task-communicationrequest
Title: "AU Diagnostic Request Communication Request Task"
Description: "Diagnostic Request Communication Request Task"
* . ^short = "Diagnostic Request Communication Request Task"
* meta.tag[task-tag] = $diagnosticrequest-tasktag#fulfillment-task
  * ^short = "fulfillment-task"
* focus 1..1 MS
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"
* partOf ..1 MS
* partOf only Reference(AUDiagnosticRequestTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"