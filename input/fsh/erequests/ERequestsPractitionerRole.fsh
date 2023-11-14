Profile: ERequestsPractitionerRole
Parent: AUCorePractitionerRole
Id: eorders-practitionerrole
Title: "Diagnostic PractitionerRole"
Description: "Diagnostic PractitionerRole profile that adds in an optional doctor code/number."

* . ^short = "A practitioner located at a site in an diagnostic request context"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier contains 
    doctorNumber 0..1 MS
* identifier[doctorNumber] only ERequestsDoctorNumber
  * ^short = "Laboratory assigned doctor number"
* location 1..
