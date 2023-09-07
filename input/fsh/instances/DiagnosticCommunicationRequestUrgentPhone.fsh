Instance:  DiagnosticCommunicationRequestUrgentPhone
InstanceOf: DiagnosticCommunicationRequestUrgent
Description: "Diagnostic Communication Request Urgent Phone Call"
Usage:  #example
* id = "66ad4c83-f611-11ed-a1fc-d2cbed391bcf"
* groupIdentifier
  * type
    * coding[+] = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU99999-A0168"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
  * assigner.display = "Small Family Trust"
* about[+] = Reference(PathologyRequestFBC)
* about[+] = Reference(PathologyRequestLFT)
* authoredOn = "2022-04-25T16:50:11+10:00"
* category[+]
  * coding = $communication-category#alert "Alert"
  * text = "Alert"
* medium[+]
  * coding = $v3-ParticipationMode#PHONE
* recipient[+] = Reference(PractitionerRolePlacer)
  * display = "Dr Jane Doe"
* subject[+] = Reference(EOrdersPatientSmith)
  * display = "Mr John Smith"
* requester = Reference(PractitionerRolePlacer)
  * display = "Dr Jane Doe"
* sender = Reference(OrganizationFiller)
  * display = "Sullivan Nicolaides Pathology"
* status = #active
* priority = #urgent

Instance:  CommunicationRequestTaskUrgentPhone
InstanceOf: CommunicationRequestTask
Description: "Communication Request Task Urgent Phone Call"
Usage:  #example
* id = "509cefba-2250-449d-bfe7-ec2dd95d1e81"
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
* focus = Reference(DiagnosticCommunicationRequestUrgentPhone)
* for = Reference(EOrdersPatientSmith)
* authoredOn = "2022-04-25T16:50:11+10:00"
* requester = Reference(PractitionerRolePlacer)
  * identifier
    * type = $v2-0203#DN
    * system = "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003624166708567"
    * assigner.display = "Sullivan Nicolaides Pathology"
    * value = "DR11"
* owner = Reference(OrganizationFiller)
