Profile: DiagnosticCommunicationRequestUrgent
Parent: CommunicationRequest
Id: diagnostic-communicationrequest-urgent
Title: "Diagnostic Communication Request Urgent"
Description: "Diagnostic provider to placer communication request.  This is used when the requesting clinician requireds an urgent response to a diagnostic order.  The request should be marked as Urgent to match the Urgent communication request."
* . ^short = "Diagnostic communication request urgent"
* status MS
* status = #active (exactly)
  * ^short = "active"
* priority MS
* priority = #urgent (exactly)
  * ^short = "urgent"
* about 1.. MS
* about only Reference (DiagnosticTaskGroup or DiagnosticTaskRequest)
  * ^short = "Diagnostic task the communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"
* subject 1..1 MS
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the sibject of the Diagnostic Service"
* requester 1.. MS
* requester only Reference (AUCorePractitionerRole or AUCoreOrganization)
  * ^short = "Individual provider or provider organisation requesting the communication (or for it to not be performed)"
* recipient 1..1 MS
* recipient only Reference (AUCorePractitionerRole)
  * ^short = "Practitioner receiving the communication"
* medium 1..1 MS
* medium from DiagnosticCommunicationUrgentMedium
  * ^short = "SMSWRIT | EMAILWRIT | PHONE"
* category 1..1 MS
* category = #alert (exactly)
  * ^short = "alert"