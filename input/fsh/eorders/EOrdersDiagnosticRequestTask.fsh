Profile: EOrdersDiagnosticRequestTask
Parent: http://hl7.org/fhir/StructureDefinition/Task
Id: eorders-diagnosticrequesttask
Title: "EOrders Diagnostic Request Task"
Description: "EOrders Diagnositic Request Task Profile"
* groupIdentifier 1..1 
* groupIdentifier ^type.profile = Canonical(EOrdersPlacerGroupNumber)
* status from EOrdersTaskStatus
* statusReason MS
* statusReason ^short = "Must support when status is abort or failed"
* intent = #order
* priority MS 
* priority from EOrdersPriority
* code 1..1 
* code from EOrdersTaskCode (required)
* focus 1..1 
* focus only Reference(EOrdersDiagnosticRequest)
* for 1..1 
* for only Reference(AUCorePatient)
* authoredOn 1..1
* lastModified MS
* lastModified ^short = "Must support when updated"
* requester 1..1 
* requester only Reference(EOrdersPractitionerRole)
  * identifier only EOrdersDoctorNumber
    * ^short = "Laboratory's doctor number for the requester"
* owner 1..1 
* owner only Reference(AUCoreOrganization or AUCoreHealthcareService)
* output MS
* output ^short = "Must support when completed"
// output should be a slice
* output.type = http://hl7.org/fhir/event-resource-types#DiagnosticReport
* output.value[x] only Reference(AUBaseDiagnosticReport)

