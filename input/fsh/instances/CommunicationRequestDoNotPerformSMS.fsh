Instance:  CommunicationRequestDoNotPerformSMS
InstanceOf: AUDiagnosticRequestCommunicationRequestPatient
Description: "Diagnostic Communication Request Do Not Perform SMS"
Usage:  #example
* id = "66ad4d84-f611-11ed-a1fc-d2cbed391bcf"
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
* recipient[+] = Reference(PatientSmith)
  * display = "Mr John Smith"
* requester = Reference(PractitionerRolePlacer)
  * display = "Dr Jane Doe"
* sender = Reference(OrganizationFiller)
  * display = "Sullivan Nicolaides Pathology"
* status = #active