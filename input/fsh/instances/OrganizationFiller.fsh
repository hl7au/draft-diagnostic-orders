Instance:  OrganizationFiller
InstanceOf: AUCoreOrganization
Title: "eOrders Organization Filler"
Usage:  #example
* id = "67904f84-aeac-44e5-a9ec-50bbb1087977"
* identifier[+] 
  * type
    * coding[+] = $v2-0203-AU#NOI
    * text = "HPI-O"
  * system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
  * value = "8003624166708567"
* active = true
* name = "Sullivan Nicolaides Pathology"
* telecom[+]
  * system = #phone
  * value = "0733778666"
  * use = #work
* telecom[+]
  * system = #email
  * value = "doctors_services@snp.com.au"
  * use = #work
/*
* telecom[+]
  * system = #email
  * value = "patientservices@snp.com.au"
  * use = #work
*/