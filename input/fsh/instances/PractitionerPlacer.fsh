Instance:  PractitionerPlacer
InstanceOf: AUCorePractitioner
Title: "Diagnostic Requester Practitioner"
Description: "Diagnostic Requester Practitioner"
Usage:  #example

* id = "75179ab5-684b-405e-a50c-a81359804d91"
* identifier[+] 
  * type
    * coding[+] = $v2-0203#NPI
    * text = "HPI-I"
  * system = "http://ns.electronichealth.net.au/id/hi/hpii/1.0"
  * value = "8003611804185423"
* active = true
* name[+] 
  * use = #official
  * family = "Doe"
  * given = "Jane" 
  * prefix = "Dr"
