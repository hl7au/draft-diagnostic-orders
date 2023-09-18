Profile: AUDiagnosticRequestDoctorNumber
Parent: Identifier
Id: au-diagnosticrequest-doctornumber
Title: "AU Diagnostic Request Doctor Number"
Description: "Diagnostic Doctor Number"

* type = $v2-0203#DN //"Doctor number"
* value 1..1
  * ^short = "Doctor Number"
* system 1..1
* system obeys inv-hpioscoped-serviceproviderindividual
  * ^short = "HPI-O scoped local identifier for Lab Doctor Codes. http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/<hpi-o of lab>"
* assigner.display 1..1
  * ^short = "Filler organization name"