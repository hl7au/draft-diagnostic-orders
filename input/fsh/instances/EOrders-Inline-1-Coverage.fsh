Instance: EOrders-Inline-1-Coverage
InstanceOf: EOrdersCoverage
Usage: #inline
* id = "1"
* status = #active
* type = $v3-ActCode#PUBLICPOL "public healthcare"
  * text = "Bulk Billed"
* beneficiary = Reference(EOrdersPatientSmith)
* payor
  * type = "Organization"
  * display = "Medicare Australia"