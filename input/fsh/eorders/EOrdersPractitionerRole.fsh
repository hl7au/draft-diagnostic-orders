Profile: EOrdersPractitionerRole
Parent: AUCorePractitionerRole
Id: eorders-practitionerrole
Title: "EOrders PractitionerRole"
Description: "EOrders PractitionerRole profile"

* . ^short = "A practitioner located at a site in an diagnostic request context"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier contains 
    doctorNumber 0..1 MS
* identifier[doctorNumber] only EOrdersDoctorNumber
  * ^short = "Laboratory assigned doctor number"
* location 1..
