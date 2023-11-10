Instance: ERequests-Inline-1-Coverage
InstanceOf: ERequestsCoverage
Usage: #inline
* id = "1"
* status = #active
* type = $v3-ActCode#PUBLICPOL "public healthcare"
  * text = "Bulk Billed"
* beneficiary = Reference(ERequestsPatientSmith)
* payor
  * type = "Organization"
  * display = "Medicare Australia"