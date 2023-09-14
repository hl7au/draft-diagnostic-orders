Profile: DiagnosticTaskCommunicationRequest
Parent: DiagnosticTaskBase
Id: diagnostic-task-communicationrequest
Title: "Diagnostic Communication Request Task"
Description: "Diagnostic Communication Request Task"
* . ^short = "Diagnostic Communication Request Task"
* meta.tag[diagnostic-task] = DiagnosticTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"
* partOf ..1 MS
* partOf only Reference(DiagnosticTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"