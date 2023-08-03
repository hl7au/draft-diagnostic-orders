Profile: DiagnosticCommunicationRequestUrgent
Parent: CommunicationRequest
Id: diagnostic-communicationrequest-urgent
Title: "Diagnostic Communication Request Urgent"
Description: "Diagnostic provider to placer communication request.  This is used when the requesting clinician requires an urgent response to a diagnostic order.  The request should be marked as Urgent to match the Urgent communication request."
* . ^short = "Diagnostic communication request urgent"
* status MS
* status = #active (exactly)
  * ^short = "active"
* priority MS
* priority = #urgent (exactly)
  * ^short = "urgent"
* about 1.. MS
* about only Reference (EOrdersDiagnosticRequest)
  * ^short = "Diagnostic request the urgent communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"
* subject 1..1 MS
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Service"
* requester 1.. MS
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1 MS
* recipient only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider receiving the communication"
* medium 1..1 MS
* medium from DiagnosticCommunicationUrgentMedium
  * ^short = "SMSWRIT | EMAILWRIT | PHONE"
* category 1..1 MS
* category = $communication-category#alert
  * ^short = "alert"