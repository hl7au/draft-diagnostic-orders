Instance:  DiagnosticCommunicationRequestUrgentPhone
InstanceOf: DiagnosticCommunicationRequestUrgent
Description: "Diagnostic Communication Request Urgent Phone Call"
Usage:  #example
* id = "66ad4c83-f611-11ed-a1fc-d2cbed391bcf"
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
