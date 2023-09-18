Instance:  TaskCommunicationRequestDoNotPerformSMS
InstanceOf: AUDiagnosticRequestTaskCommunicationRequest
Description: "Communication Request Task Do Not Perform SMS"
Usage:  #example
* id = "e8ed2aba-8127-47fa-b339-d9e134409f3f"
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
* priority = #urgent
* code.coding = http://hl7.org/fhir/CodeSystem/task-code#fulfill
* focus = Reference(CommunicationRequestDoNotPerformSMS)
* for = Reference(PatientSmith)
* authoredOn = "2022-04-25T16:50:11+10:00"
* requester = Reference(PractitionerRolePlacer)
  * identifier
    * type = $v2-0203#DN
    * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003624166708567"
    * assigner.display = "Sullivan Nicolaides Pathology"
    * value = "DR11"
* owner = Reference(OrganizationFiller)
