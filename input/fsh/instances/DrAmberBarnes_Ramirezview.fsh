Instance: DrAmberBarnesAtRamirezviewMedicalCentre
InstanceOf: ERequestsPractitionerRole
Title: "Dr Amber Barnes @ Ramirezview Medical Centre"
Description: "Dr Amber Barnes @ Ramirezview Medical Centre"
Usage: #example
* active = true
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
  * type = $v2-0203-AU#UPIN "Medicare Provider Number"
    * text = "Medicare Provider Number"
  * value = "9607545L"
* location
  * display = "Ramirezview Medical Centre"
* organization = Reference(RamirezviewMedicalCentre) "Ramirezview Medical Centre"
* practitioner = Reference(DrAmberBarnes) "Dr Amber Barnes"