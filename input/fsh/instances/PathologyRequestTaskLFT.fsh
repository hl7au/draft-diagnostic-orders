Instance:  PathologyRequestTaskLFT
InstanceOf: DiagnosticTaskRequest
Title: "Diagnostic Pathology Request Task LFT"
Usage:  #example
* id = "1d4f3888-13b7-472d-859b-571bb7125fe2"
* groupIdentifier
  * type
    * coding[+] = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU99999-A0168"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
  * assigner.display = "Small Family Trust"
* status = #requested
* intent = #order
* priority = #routine
* code.coding = http://hl7.org/fhir/CodeSystem/task-code#fulfill
* focus = Reference(PathologyRequestLFT)
* for = Reference(EOrdersPatientSmith)
* authoredOn = "2022-04-25"
* requester = Reference(PractitionerRolePlacer)
  * identifier
    * type = $v2-0203#DN
    * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003624166708567"
    * assigner.display = "Sullivan Nicolaides Pathology"
    * value = "DR11"
* owner = Reference(OrganizationFiller)
