Profile: AUDiagnosticRequestCommunicationRequestProvider
Parent: CommunicationRequest
Id: au-diagnosticrequest-communicationrequest-provider
Title: "AU Diagnostic Request Communication Request Provider"
Description: "Diagnostic communication request to clinical provider.  This is used when the requesting clinician requires urgent contact relating to the results of a request.  The request should be marked as 'urgent' to match the 'urgent' communication request."
* . ^short = "Diagnostic communication request to clinical provider"
* status MS
* status = #active (exactly)
  * ^short = "active"
* priority MS
* about 1.. MS
* about only Reference (AUDiagnosticRequestServiceRequest)
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
* recipient only Reference (AUDiagnosticRequestPractitionerRoleContact)
  * ^short = "Individual provider receiving the communication represented as a contained PractitionerRole with communication contact details"
  * reference 1..
    * ^short = "Reference to contained PractitionerRole resource" 
* medium 1..1 MS
* medium from AUDiagnosticRequestCommunicationMediumProvider
  * ^short = "PHONE"
* category 1..1 MS
* category = $communication-category#alert
  * ^short = "alert"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(AUDiagnosticRequestPlacerGroupNumber)

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    recipient 1..1 MS
* contained[recipient] only AUDiagnosticRequestPractitionerRoleContact
