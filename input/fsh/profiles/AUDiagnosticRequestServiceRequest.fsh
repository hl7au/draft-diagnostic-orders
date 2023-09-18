Profile: AUDiagnosticRequestServiceRequest
Parent: http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest
Id: au-diagnosticrequest-servicerequest
Title: "AU Diagnostic Request Service Request"
Description: "Diagnositic Service Request"

* extension contains ResultCopiesTo named copiesto 0..* MS
* extension contains ServiceRequestFastingPrecondition named request-fasting 0..1 MS

* requisition 1..1 
* requisition ^type.profile = Canonical(AUDiagnosticRequestPlacerGroupNumber)
* status from AUDiagnosticRequestServiceRequestStatus (required)
* intent = #order
* category 1..1 MS
* category from AUDiagnosticRequestServiceRequestCategory (required)
* priority MS
* priority from AUDiagnosticRequestPriority (required)
* code 1.. MS
* code ^short = "Diagnostic test code or free text test name"
* code from $RCPA-RP (example)
* code.coding ^short = "Ideally a value set from SNOMED-CT such as RCPA SPIA request codes, but may need to support lab maintained test codes."
* code.coding.extension contains http://hl7.org/fhir/StructureDefinition/valueset-reference named spia-vsref 0..1 MS
* code.coding.extension[spia-vsref] ^short = "Url (version specific) of diagnostic request value set the code was selected from"
* code.coding.extension[spia-vsref].valueUri 1..1
* code.coding.extension[spia-vsref].valueUri ^short = "Example: 'https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3|3.0.1'"
* code.text 1..1
* code.text ^short = "Test name selected or free text entered by the user"
* subject MS
* subject only Reference(AUCorePatient)
* subject.reference 1..
* subject.display MS
* encounter 1.. MS
* encounter only Reference(AUDiagnosticRequestEncounter)
  * reference 1..
    * ^short = "Reference to contained Encounter"
* authoredOn 1..1
* authoredOn ^short = "Date requested"
* requester 1..1
* requester only Reference(AUDiagnosticRequestPractitionerRole) 
* performerType 0..1  
* performerType from  http://hl7.org/fhir/ValueSet/performer-role
// Since the request is not directed to a specific performer, it is not populated
//* performer only Reference(HealthcareService or Organization)

//* reasonCode from  http://hl7.org/fhir/ValueSet/procedure-reason
* reasonCode ..1 MS
* reasonCode.text 1..1
* insurance 1..1 MS
* insurance only Reference(Coverage)
  * ^short = "Reference to Coverage resource for funding type"
  * reference 1..
    * ^short = "Reference to contained Coverage resource"
* supportingInfo MS
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
    encounter 0..1 MS and
    supportingObs 0..* MS 
* contained[coverage] only Coverage
* contained[encounter] only AUDiagnosticRequestEncounter
* contained[supportingObs] only Observation

