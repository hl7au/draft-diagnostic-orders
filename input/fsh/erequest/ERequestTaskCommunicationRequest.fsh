Profile: ERequestTaskCommunicationRequest
Parent: ERequestTaskBase
Id: erequest-task-communicationrequest
Title: "Diagnostic Communication Request Task"
Description: "Diagnostic Communication Request Task to support a Patient or Practitioner CommunicationRequest."
* . ^short = "Diagnostic Communication Request Task"
* meta.tag[diagnostic-task] = ERequestTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* status = #requested
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"
* partOf ..1 MS
* partOf only Reference(ERequestTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"