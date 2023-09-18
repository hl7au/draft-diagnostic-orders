Instance: PathologyRequest-Inline-1-Coverage
InstanceOf: AUDiagnosticRequestCoverage
Usage: #inline
* id = "1"
* status = #active
* type = $v3-ActCode#PUBLICPOL "public healthcare"
  * text = "Bulk Billed"
* beneficiary = Reference(PatientSmith)
* payor
  * type = "Organization"
  * display = "Medicare Australia"