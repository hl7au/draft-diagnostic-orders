Profile: AUDiagnosticRequestPractitionerRoleContact
Parent: AUBasePractitionerRole
Id: au-diagnosticrequest-practitionerrole-contact
Title: "AU Diagnostic Request PractitionerRole Contact"
Description: "This profile supports a PractitionerRole with communication contact details in the context of Diagnostic Requests"

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
