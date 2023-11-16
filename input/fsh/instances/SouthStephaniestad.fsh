Instance: SouthStephaniestadMedicalCentre
InstanceOf: AUCoreOrganization
Title: "South Stephaniestad Medical Centre Clinical Provider Organisation"
Description: "South Stephaniestad Medical Centre Clinical Provider Organisation"
Usage: #example
* active = true
* address[+]
  * city = "South Stephaniestad"
  * country = "AU"
  * line = "635 Cruz Ring"
  * postalCode = "2998"
  * state = "NT"
  * text = "635 Cruz Ring\nSouth Stephaniestad, NT, 2998"
  * type = #physical
  * use = #work
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
  * type = $v2-0203-AU#NOI "National Organisation Identifier"
    * text = "HPI-O"
  * value = "8003627796442929"
* name = "South Stephaniestad Medical Centre"
* telecom[+]
  * system = #phone
  * use = #work
  * value = "6148992750"
* telecom[+]
  * system = #fax
  * use = #work
  * value = "6125750917"
* telecom[+]
  * system = #email
  * use = #work
  * value = "lisa33@example.com"