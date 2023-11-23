Profile: ERequestRequestGroup
Parent: RequestGroup
Id: erequest-request-group
Title: "Diagnostic RequestGroup"
Description: "Diagnostic RequestGroup to reference all the individual ServiceRequests."

* extension contains ResultCopiesTo named copiesto 0..* MS
* extension contains ERequestServiceRequestFasting named request-fasting 0..1 MS
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(ERequestPlacerGroupNumber)
* status from ERequestServiceRequestStatus (required)
* status ^short = "active | completed | revoked"
* intent = #order
* priority MS
* priority from ERequestPriority (required)
* subject MS
* subject only Reference(AUCorePatient)
* subject.reference 1..
* subject.display MS
* encounter 1.. MS
* encounter only Reference(ERequestEncounter)
  * reference 1..
    * ^short = "Reference to contained Encounter"
* authoredOn 1..1
* authoredOn ^short = "Date requested"
* author 1..1
* author only Reference(ERequestPractitionerRole) 
* reasonCode ..1 MS
* reasonCode.text 1..1
* action
  * resource only Reference(ERequestDiagnosticRequestPathology or ERequestDiagnosticRequestRadiology)