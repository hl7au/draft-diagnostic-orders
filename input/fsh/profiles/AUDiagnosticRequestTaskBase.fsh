Profile: AUDiagnosticRequestTaskBase
Parent: Task
Id: au-diagnosticrequest-task-base
Title: "AU Diagnostic Request Task Base"
Description: "Diagnostic Task Base"
* . ^short = "Diagnostic Task Base"
* ^abstract = true
* meta
  * tag ^slicing.rules = #open
  * tag ^slicing.discriminator.type = #value
  * tag ^slicing.discriminator.path = "system"
  * tag contains 
      task-tag 0..1 MS
  * tag[task-tag].system = $diagnosticrequest-tasktag 
  //* tag[task-tag] from AUDiagnosticRequestTaskTag (required)
  * tag[task-tag] from http://terminology.hl7.org.au/ValueSet/diagnosticrequest-tasktag (required) 
    * ^short = "fulfillment-task | fulfillment-task-group"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(AUDiagnosticRequestPlacerGroupNumber)
* status MS
* status from AUDiagnosticRequestTaskStatus
  * ^short = "requested | received | accepted | rejected | cancelled | in-progress | completed | failed"
* statusReason MS
* statusReason ^short = "Must support when status is rejected, cancelled or failed"
* intent = #order (exactly)
  * ^short = "order"
* priority MS 
* priority from AUDiagnosticRequestPriority
  * ^short = "routine | urgent"
* code 1..1 MS
* code from AUDiagnosticRequestTaskCode (required)
  * ^short = "fulfill | abort"
* for 1..1 MS
* for only Reference(AUCorePatient)
  * ^short = "Patient the fulfillment of the diagnostic request is for"
* authoredOn 1..1 MS
  * ^short = "Request date"
* lastModified MS
* lastModified ^short = "Date/time when task and/or status last updated"
* requester 1..1 MS
  * ^short = "The provider requesting the diagnostic service"
* requester only Reference(AUDiagnosticRequestPractitionerRole)
  * identifier only AUDiagnosticRequestDoctorNumber
    * ^short = "Laboratory's doctor number for the requester"
* owner 1..1 MS
* owner only Reference(AUCoreOrganization or AUCoreHealthcareService)
* output MS
* output ^short = "Must support when completed"
// output should be a slice
* output.type = http://hl7.org/fhir/event-resource-types#DiagnosticReport
* output.value[x] only Reference(AUBaseDiagnosticReport)

