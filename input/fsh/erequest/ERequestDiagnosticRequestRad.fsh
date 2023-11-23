Profile: ERequestDiagnosticRequestRadiology
Parent: ERequestDiagnosticRequestBase
Id: erequest-diagnosticrequest-radiology
Title: "Diagnostic Service Request Radiology"
Description: "Diagnostic Service Request for Radiology.  This will in future hold radiology-specific requesting content."

* code 1.. MS
* code ^short = "Radiology procedure code or free text name"
* code.coding ^short = "Ideally a value set from SNOMED-CT, but may need to support provider maintained codes."
* code.text 1..1
* code.text ^short = "Procedure name selected or free text entered by the user"