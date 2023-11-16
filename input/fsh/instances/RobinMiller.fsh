Instance: RobinMiller
InstanceOf: AUCorePatient
Title: "Robin Miller Patient"
Description: "Robin Miller Patient"
Usage: #example
* active = true
* address[+]
  * city = "Lake Williamfurt"
  * country = "AU"
  * line = "5 James Extension"
  * postalCode = "2635"
  * state = "TAS"
  * text = "5 James Extension\nLake Williamfurt, TAS, 2635"
  * type = #physical
  * use = #home
* birthDate = "1955-12-23"
* deceasedBoolean = false
* gender = #female
* generalPractitioner = Reference(DrPennyWalkerAtSouthStephaniestad) "Dr Penney Walker @ South Stephaniestad"
* identifier[+]
  * period
    * end = "2025-11"
  * system = "http://ns.electronichealth.net.au/id/medicare-number"
  * type = $v2-0203#MC "Patient's Medicare Number"
    * text = "Patient's Medicare Number"
  * value = "56450729222"
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/hi/ihi/1.0"
  * type = $v2-0203#NI "National unique individual identifier"
    * text = "National unique individual identifier"
  * value = "8003608763762069"
* identifier[+]
  * assigner
    * display = "Department of Veterans' Affairs"
    * type = "Organization"
  * system = "http://ns.electronichealth.net.au/id/dva"
  * type = #v2-0203-AU#DVG "DVA Gold Card Number"
    * text = "DVA Gold Card Number"
  * value = "TIV76893"
* managingOrganization = Reference(SouthStephaniestadMedicalCentre) "South Stephaniestad Medical Centre"
* name[+]
  * family = "Miller"
  * given = "Robin"
  * prefix = "Mrs."
  * text = "Robin Miller"
  * use = #official
* telecom[+]
  * system = #phone
  * use = #mobile
  * value = "6147288473"
* telecom[+]
  * system = #email
  * use = #home
  * value = "ronalddavis@example.org"