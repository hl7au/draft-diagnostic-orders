Profile: DiagnosticPractitionerRoleContact
Parent: AUBasePractitionerRole
Id: diagnostic-practitionerrole-contact
Title: "Diagnostic PractitionerRole Contact"
Description: "This profile supports a PractitionerRole for clinician communication contact details as used for urgent diagnostic result communication."

* . ^short = "Individual provider with communication contact details"
* practitioner 1.. MS
  * reference 1..
* telecom 1..1 MS
  * ^short = "Contact phone number"
  * system 1..1
  * system = #phone (exactly)
    * ^short = "phone"
  * value 1..1
    * ^short = "Contact phone number"
