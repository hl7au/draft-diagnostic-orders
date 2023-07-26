Profile: DiagnosticTaskBase
Parent: Task
Id: diagnostic-task-base
Title: "Diagnostic Task Base"
Description: "Diagnostic Task Base"
* . ^short = "Diagnostic Task Base"
* ^abstract = true
* meta
  * tag ^slicing.rules = #open
  * tag ^slicing.discriminator.type = #value
  * tag ^slicing.discriminator.path = "system"
  * tag contains 
      diagnostic-task 0..1 MS
  * tag[diagnostic-task]
//    * system = Canonical(DiagnosticTaskTag)
  * tag[diagnostic-task] from DiagnosticTaskTags (required)
    * ^short = "diagnostic-task-request | diagnostic-task-group"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(EOrdersPlacerGroupNumber)
* status MS
* status from EOrdersTaskStatus
  * ^short = "requested | received | accepted | rejected | cancelled | in-progress | completed | failed"
* statusReason MS
* statusReason ^short = "Must support when status is rejected, cancelled or failed"
* intent = #order (exactly)
  * ^short = "order"
* priority MS 
* priority from EOrdersPriority
  * ^short = "routine | urgent"
* code 1..1 MS
* code from EOrdersTaskCode (required)
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
* requester only Reference(EOrdersPractitionerRole)
  * identifier only EOrdersDoctorNumber
    * ^short = "Laboratory's doctor number for the requester"
* owner 1..1 MS
* owner only Reference(AUCoreOrganization or AUCoreHealthcareService)
* output MS
* output ^short = "Must support when completed"
// output should be a slice
* output.type = http://hl7.org/fhir/event-resource-types#DiagnosticReport
* output.value[x] only Reference(AUBaseDiagnosticReport)

