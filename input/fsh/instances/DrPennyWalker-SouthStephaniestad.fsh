Instance: DrPennyWalkerAtSouthStephaniestad
InstanceOf: ERequestsPractitionerRole
Title: "Dr Penny Walker @ South Stephaniestad Medical Centre"
Description: "Dr Penny Walker @ South Stephaniestad Medical Centre"
Usage: #example
* active = true
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
  * type = $v2-0203-AU#UPIN "Medicare Provider Number"
    * text = "Medicare Provider Number"
  * value = "598754HY"
* identifier[+]
  * assigner
    * display = "Betoota Pathology"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003629538686011"
  * type = $v2-0203#DN
  * value = "BE9353"
* location
  * display = "South Stephaniestad Medical Centre"
* organization = Reference(SouthStephaniestadMedicalCentre) "South Stephaniestad Medical Centre"
* practitioner = Reference(DrPennyWalker) "Penny Walker"