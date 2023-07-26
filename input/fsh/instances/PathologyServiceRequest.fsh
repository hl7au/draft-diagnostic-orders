Instance:  PathologyServiceRequest
InstanceOf: EOrdersDiagnosticRequest
Title: "Diagnostic Pathology Request text"
Description: "Diagnostic Pathology Request - free text test name"
Usage:  #example
* id = "018c4883-2359-4122-9f19-48cdd83fad0d"
* requisition
  * type
    * coding[+] = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU99999-A0167"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
  * assigner.display = "Small Family Trust"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #routine
* code.text = "FBC, LFT"
* subject = Reference(EOrdersPatientSmith)
* authoredOn = "2022-04-19"
* requester = Reference(PractitionerRolePlacer)
* extension[+]
  * url = Canonical(ResultCopiesTo)
  * valueReference = Reference(PractitionerPlacer)
  * valueReference.display = "Dr Jane Doe"
* extension[+]
  * url = Canonical(ResultCopiesTo)
  * valueReference = Reference(OrganizationPlacer)
  * valueReference.display = "Small Family Trust"
* insurance = Reference(EOrders-Inline-1-Coverage)
* contained[0] = EOrders-Inline-1-Coverage
* encounter = Reference(EOrders-Inline-2-Encounter)
* contained[+] = EOrders-Inline-2-Encounter

