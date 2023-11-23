Profile: ERequestDiagnosticRequestBase
Parent: AUBaseDiagnosticRequest
Id: erequest-diagnosticrequest-base
Title: "Diagnostic Service Request Base"
Description: "Diagnostic Service Request Base used for Pathology and Radiology.  Carries all the common attributes for diagnostic requests.  Only put attributes here if not specific to pathology or radiology."
* . ^short = "Diagnostic Service Request Base"
* ^abstract = true

* extension contains ResultCopiesTo named copiesto 0..* MS
* extension contains ERequestServiceRequestFasting named request-fasting 0..1 MS

* requisition 1..1 
* requisition ^type.profile = Canonical(ERequestPlacerGroupNumber)
* status from ERequestServiceRequestStatus (required)
* status ^short = "active | completed | revoked"
* intent = #order
* category 1..1 MS
* category from ERequestServiceRequestCategory (required)
* priority MS
* priority from ERequestPriority (required)

* subject MS
* subject only Reference(AUCorePatient)
* subject.reference 1..
* subject.display MS
* encounter 1.. MS
* encounter only Reference(ERequestEncounter)
  * reference 1..
* authoredOn 1..1
* authoredOn ^short = "Date requested"
* requester 1..1
* requester only Reference(ERequestPractitionerRole) 
* performerType 0..1  
* performerType from  http://hl7.org/fhir/ValueSet/performer-role
// Since the request is not directed to a specific performer, it is not populated
//* performer only Reference(HealthcareService or Organization)

//* reasonCode from  http://hl7.org/fhir/ValueSet/procedure-reason
* reasonCode ..1 MS
* reasonCode.text 1..1
* insurance 1..1 MS
* insurance only Reference(ERequestCoverage)
  * ^short = "Reference to Coverage resource for funding type"
  * reference 1..
    * ^short = "Reference to contained Coverage resource"
* supportingInfo MS
* supportingInfo obeys inv-narrative-for-supportinginfo-servicerequest
* supportingInfo only Reference (Observation or Condition)
  * ^short = "Supporting request information such as pregnacy status"
  * reference 1..
    * ^short = "Reference to contained resource or relative resource URL"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo contains 
    pregnancystatus 0..1 MS and
    gestationalage 0..1 MS and
    lastmenstrualperiod 0..1 MS 
* supportingInfo[pregnancystatus] only Reference(AUCorePregnancyStatus)
* supportingInfo[gestationalage] only Reference(AUCoreGestationalAge)
* supportingInfo[lastmenstrualperiod] only Reference(AUCoreLastMenstrualPeriod)
//* note MS
//* note 0..1
* patientInstruction MS
* patientInstruction ^short = "Instructions to patient. Must support where available."

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    coverage 0..1 MS and
    supportingObs 0..* MS 
* contained[coverage] only Coverage
* contained[supportingObs] only Observation

