Profile: AUDiagnosticRequestTaskGroup
Parent: AUDiagnosticRequestTaskBase
Id: au-diagnosticrequest-task-group
Title: "AU Diagnostic Request Task Group"
Description: "Diagnositic Task Group"
* . ^short = "Diagnostic Task Group"
* meta.tag[task-tag] = $diagnosticrequest-tasktag#fulfillment-task-group
  * ^short = "fulfillment-task-group"
* partOf 0..0
* focus 0..0
