Instance: billingCoverage
InstanceOf: ERequestCoverage
Title: "Billing Coverage"
Description: "Billing coverage based on bulk billing"

Usage: #example
* beneficiary = Reference(PatientSmith) "Joan Smith"
* payor
  * display = "Medicare Australia"
  * type = "Organization"
* status = #active
* type
  * coding = $v3-ActCode#PUBLICPOL "public healthcare"
    * version = "2018-08-12"
  * text = "Bulk Billed"
