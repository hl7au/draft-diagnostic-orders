Instance:  PathologyRequestLFT
InstanceOf: ERequestDiagnosticRequestPathology
Title: "Diagnostic Pathology Request LFT"
Description: "Diagnostic Pathology Request LFT"
Usage:  #example

* id = "3dff87af-5dac-40d5-be3d-9eaf9b3879b8"
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
* code.coding = $sct#26958001 "Liver function test"
* code.text = "LFT"
* quantityQuantity
  * value = 1
* subject = Reference(PatientSmith)
* authoredOn = "2022-04-25"
* requester = Reference(PractitionerRolePlacer)
* insurance = Reference(Inline-1-Coverage)
* contained[+] = Inline-1-Coverage
* encounter = Reference(Inline-2-Encounter)
* contained[+] = Inline-2-Encounter