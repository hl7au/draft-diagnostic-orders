Profile: CommunicationRequestTask
Parent: DiagnosticTaskBase
Id: eorders-communicationtaskrequest
Title: "Communication Request Task"
Description: "Communication Request Task"
* . ^short = "Communication Request Task "
* meta.tag[diagnostic-task] = DiagnosticTaskTag#diagnostic-task-request
  * ^short = "diagnostic-task-request"
* focus 1..1 MS
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"
* partOf ..1 MS
* partOf only Reference(DiagnosticTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"