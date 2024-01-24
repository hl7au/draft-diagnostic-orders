Instance:  PathologyRequestFBC
InstanceOf: ERequestDiagnosticRequestPathology
Title: "Diagnostic Pathology Request FBC"
Description: "Diagnostic Pathology Request FBC"
Usage:  #example

* id = "681a8919-8d91-4868-a46a-ab6877ad27ea"
* requisition
  * type
    * coding[+] = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU99999-A0168"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
  * assigner.display = "Small Family Trust"
* status = #active
* intent = #option
* category = $sct#108252007 "Laboratory procedure"
* priority = #urgent
* code.coding = $sct#26604007
* code.text = "FBC"
* quantityQuantity
  * value = 1
* subject = Reference(PatientSmith)
* authoredOn = "2022-04-25"
* requester = Reference(PractitionerRolePlacer)
* insurance = Reference(Inline-1-Coverage)
* contained[0] = Inline-1-Coverage
* encounter = Reference(Inline-2-Encounter)
* contained[+] = Inline-2-Encounter