Instance:  PractitionerRolePhoneContact
InstanceOf: AUDiagnosticRequestPractitionerRoleContact
Title: "Diagnostic PractitionerRole Phone Contact"
Usage:  #inline
* id = "1"
* practitioner = Reference(PractitionerPlacer)
  * display = "Dr Jane Doe"
* telecom[+]
  * system = #phone
  * value = "0479-353-532"
  * use = #mobile
