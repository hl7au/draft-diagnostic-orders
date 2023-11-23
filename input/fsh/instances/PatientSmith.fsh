Instance:  PatientSmith
InstanceOf: AUCorePatient
Title: "Diagnostic Patient"
Description: "Diagnostic Patient - minimal with MCN"
Usage:  #example
* id = "1078d551-7be2-49f7-a122-c230b8757f2f"
* active = true
* name[+] 
  * use = #official
  * family = "Smith"
  * given = "Joan" 
  * prefix = "Mrs"
* gender = #female
* birthDate = "1997-01-20"
* identifier[+]
  * system = "http://ns.electronichealth.net.au/id/medicare-number"
  * value = "54164532692"
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MC