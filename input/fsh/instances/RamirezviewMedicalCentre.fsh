Instance: RamirezviewMedicalCentre
InstanceOf: AUCoreOrganization
Title: "Ramirezview Medical Centre"
Description: "Ramirezview Medical Centre"
Usage: #example
* active = true
* address[+]
  * city = "Ramirezview"
  * country = "AU"
  * line = "Flat 21 34 Erica Expressway"
  * postalCode = "2650"
  * state = "SA"
  * text = "Flat 21 34 Erica Expressway\nRamirezview, SA, 2650"
  * type = #physical
  * use = #work
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
  * type = $v2-0203-AU#NOI "National Organisation Identifier"
    * text = "HPI-O"
  * value = "8003629224594990"
* name = "Ramirezview Medical Centre"
* telecom[+]
  * system = #phone
  * use = #work
  * value = "13381601"
* telecom[+]
  * system = #fax
  * use = #work
  * value = "6147950735"
* telecom[+]
  * system = #email
  * use = #work
  * value = "emassey@example.com"