Profile: AUDiagnosticRequestEncounter
Parent: AUBaseEncounter
Id: au-diagnosticrequest-encounter
Title: "AU Diagnostic Request Encounter"
Description: "Minimum Encounter for Diagnostic Request"

* id MS
* status MS
* status = #finished
* status ^short = "Assumes the encounter where the request was made is finished"

* class MS 
* class = $v3-ActCode#AMB
* class ^short = "Assumes the encounter where the request was made is Outpatient (i.e. AMB ambulatory)"

* subject MS
* subject only Reference(AUCorePatient)
  * ^short = "Patient the request is for"
  * reference 1..
    * ^short = "Relative reference to Patient"
