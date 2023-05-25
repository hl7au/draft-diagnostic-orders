Instance:  DiagnosticCommunicationRequestDoNotPerformSMS
InstanceOf: DiagnosticCommunicationRequest
Description: "Diagnostic Communication Request Do Not Perform SMS"
Usage:  #example
* id = "66ad4d84-f611-11ed-a1fc-d2cbed391bcf"
* about[+] = Reference(PathologyRequestTaskFBC)
* about[+] = Reference(PathologyRequestTaskLFT)
* authoredOn = "2022-04-25T16:50:11+10:00"
* category[+]
  * coding = $communication-category#instruction "Instruction"
  * text = "Instruction"
* doNotPerform = true
* medium[+]
  * coding = $v3-ParticipationMode#SMSWRIT
* recipient[+] = Reference(EOrdersPatientSmith)
  * display = "Mr John Smith"
* requester = Reference(PractitionerRolePlacer)
  * display = "Dr Jane Doe"
* sender = Reference(OrganizationFiller)
  * display = "Sullivan Nicolaides Pathology"
* status = #active
