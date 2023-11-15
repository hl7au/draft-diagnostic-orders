Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

Instance: billingCoverage
InstanceOf: Coverage
Title: "Billing Coverage"
Usage: #example
* meta.profile = "http://draft.hl7.org.au/fhir/diagnostic-orders/StructureDefinition/eorders-coverage,"
* meta.source = "creator:uiGeniePathOrder/v0.0.6"
* beneficiary = Reference(ERequestsPatientSmith) "Joan Smith"
* payor.display = "Medicare Australia"
* payor.type = "Organization"
* status = #active
* type.coding = $v3-ActCode#PUBLICPOL "public healthcare"
* type.coding.version = "2018-08-12"
* type.text = "Bulk Billed"
