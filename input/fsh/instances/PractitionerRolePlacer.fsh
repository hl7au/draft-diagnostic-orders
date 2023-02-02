Instance:  PractitionerRolePlacer
InstanceOf: EOrdersPractitionerRole
Title: "eOrders PractitionerRole Placer"
Usage:  #example
* id = "570c1233-5361-453e-99a4-504c2045d27c"
* identifier[+] 
  * type
    * coding[+] = $v2-0203-AU#UPIN
    * text = "Medicare Provider Number"
  * system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
  * value = "1063625F"
* identifier[+]
  * type = $v2-0203#DN
    * text = "Laboratory Doctor Number"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003624166708567"
  * assigner.display = "Sullivan Nicolaides Pathology"
  * value = "DR11"
* active = true
* practitioner = Reference(PractitionerPlacer)
  * display = "Dr Jane Doe"
* organization = Reference(OrganizationPlacer)
  * display = "Small Family Trust"
* location.display = "Small Medical Clinic" 
