Profile: AUDiagnosticRequestCommunicationRequestPatient
Parent: CommunicationRequest
Id: au-diagnosticrequest-communicationrequest-patient
Title: "AU Diagnostic Request Communication Request Patient"
Description: "Diagnostic provider to patient communication request"
* . ^short = "Diagnostic communication request to patient"
* status MS
* status = #active (exactly)
  * ^short = "active"
* about 1.. MS
* about only Reference (AUDiagnosticRequestTaskGroup or AUDiagnosticRequestTaskRequest)
  * ^short = "Diagnostic task the communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* doNotPerform 1..1 MS
  * ^short = "True when SMS communication with patient is requested to not be performed"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the SMS"
* requester 1.. MS
* requester only Reference (AUCorePatient or AUCorePractitionerRole or AUCoreOrganization)
  * ^short = "Patient, individual provider or provider organisation requesting the communication (or for it to not be performed)"
* recipient 1..1 MS
* recipient only Reference (AUCorePatient)
  * ^short = "Patient receiving the communication"
* medium 1..1 MS
* medium from AUDiagnosticRequestCommunicationMediumPatient
  * ^short = "SMSWRIT | EMAILWRIT"
* category 1.. MS
* category from AUDiagnosticRequestCommunicationCategory
  * ^short = "reminder | instruction"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(AUDiagnosticRequestPlacerGroupNumber)