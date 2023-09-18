Profile: AUDiagnosticRequestPractitionerRole
Parent: AUCorePractitionerRole
Id: au-diagnosticrequest-practitionerrole
Title: "AU Diagnostic Request PractitionerRole"
Description: "Diagnostic PractitionerRole profile"

* . ^short = "A practitioner located at a site in an diagnostic request context"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier contains 
    doctorNumber 0..1 MS
* identifier[doctorNumber] only AUDiagnosticRequestDoctorNumber
  * ^short = "Laboratory assigned doctor number"
* location 1..
