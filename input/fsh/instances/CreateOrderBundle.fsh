Instance:  CreateOrderBundle
InstanceOf: Bundle
Title: "Diagnostic Request Transaction"
Description: "Diagnostic Request Transaction with text ServiceRequest and Task"
Usage:  #example
* id = "73a3f109-63ec-44ad-bf01-98a4fa364d96"
* type = #transaction
* timestamp = "2022-04-19T13:25:23.123+10:00"
* entry[+]
  * fullUrl = "urn:uuid:1078d551-7be2-49f7-a122-c230b8757f2f"
  * resource = EOrdersPatientSmith
  * request
    * method = #PUT
    * url = "Patient/1078d551-7be2-49f7-a122-c230b8757f2f"
* entry[+]
  * fullUrl = "urn:uuid:018c4883-2359-4122-9f19-48cdd83fad0d"
  * resource = PathologyServiceRequest
  * request
    * method = #PUT
    * url = "ServiceRequest/018c4883-2359-4122-9f19-48cdd83fad0d"
* entry[+]
  * fullUrl = "urn:uuid:fdcca47c-e554-46e5-a71f-91ec855faa29"
  * resource = OrganizationPlacer
  * request
    * method = #PUT
    * url = "Organization/fdcca47c-e554-46e5-a71f-91ec855faa29"
* entry[+]
  * fullUrl = "urn:uuid:570c1233-5361-453e-99a4-504c2045d27c"
  * resource = PractitionerRolePlacer
  * request
    * method = #PUT
    * url = "PractitionerRole/570c1233-5361-453e-99a4-504c2045d27c"
* entry[+]
  * fullUrl = "urn:uuid:75179ab5-684b-405e-a50c-a81359804d91"
  * resource = PractitionerPlacer
  * request
    * method = #PUT
    * url = "Practitioner/75179ab5-684b-405e-a50c-a81359804d91"
* entry[+]
  * fullUrl = "urn:uuid:67904f84-aeac-44e5-a9ec-50bbb1087977"
  * resource = OrganizationFiller
  * request
    * method = #PUT
    * url = "Organization/67904f84-aeac-44e5-a9ec-50bbb1087977"
* entry[+]
  * fullUrl = "urn:uuid:a37e5691-3144-4e59-b836-5eaa54ed4f67"
  * resource = PathologyRequestTask
  * request
    * method = #PUT
    * url = "Task/a37e5691-3144-4e59-b836-5eaa54ed4f67"
* entry[+]
  * fullUrl = "urn:uuid:6d83978c-6507-4c1a-8099-4a7d7fe48bc0"
  * resource = ConsentDisclosureWithdrawl
  * request
    * method = #PUT
    * url = "Consent/6d83978c-6507-4c1a-8099-4a7d7fe48bc0"
