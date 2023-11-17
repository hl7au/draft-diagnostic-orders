Instance:  DiagnosticCommunicationRequestDoNotPerformSMS
InstanceOf: DiagnosticCommunicationRequestPatient
Title: "Diagnostic Communication Request Do Not Perform SMS"
Description: "Diagnostic Communication Request Do Not Perform SMS"
Usage:  #example
* id = "66ad4d84-f611-11ed-a1fc-d2cbed391bcf"
* meta.tag = DiagnosticTaskTag#diagnostic-task-request
* groupIdentifier
  * type
    * coding[+] = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU99999-A0168"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
  * assigner.display = "Small Family Trust"
* about[+] = Reference(PathologyRequestTaskFBC)
* about[+] = Reference(PathologyRequestTaskLFT)
* authoredOn = "2022-04-25T16:50:11+10:00"
* category[+]
  * coding = $communication-category#instruction "Instruction"
  * text = "Instruction"
* doNotPerform = true
* medium[+]
  * coding = $v3-ParticipationMode#SMSWRIT
* recipient[+] = Reference(ERequestsPatientSmith)
  * display = "Mr John Smith"
* requester = Reference(PractitionerRolePlacer)
  * display = "Dr Jane Doe"
* sender = Reference(OrganizationFiller)
  * display = "Sullivan Nicolaides Pathology"
* status = #active

Instance:  DiagnosticTaskCommunicationRequestDoNotPerformSMS
InstanceOf: DiagnosticTaskCommunicationRequest
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
* focus = Reference(DiagnosticCommunicationRequestDoNotPerformSMS)
* for = Reference(ERequestsPatientSmith)
* authoredOn = "2022-04-25T16:50:11+10:00"
* requester = Reference(PractitionerRolePlacer)
  * identifier
    * type = $v2-0203#DN
    * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003624166708567"
    * assigner.display = "Sullivan Nicolaides Pathology"
    * value = "DR11"
* owner = Reference(OrganizationFiller)
