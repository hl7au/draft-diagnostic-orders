Profile: ERequestsDoctorNumber
Parent: Identifier
Id: eorders-doctornumber
Title: "Diagnostic Doctor Number"
Description: "Doctor numbers are used by some diagnostic service providers to uniquely identify a specific clinician requesting context.  In particular, it is used for customising report delivery.  Once reuests and reports are linked through FHIR, these codes may not be useful."

* type = $v2-0203#DN //"Doctor number"
* value 1..1
  * ^short = "Doctor Number"
* system 1..1
* system obeys inv-hpioscoped-serviceproviderindividual
  * ^short = "HPI-O scoped local identifier for Lab Doctor Codes. http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/<hpi-o of lab>"
* assigner.display 1..1
  * ^short = "Filler organization name"