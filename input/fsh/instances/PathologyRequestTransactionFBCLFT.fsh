Instance:  PathologyRequestTransactionFBCLFT
InstanceOf: Bundle
Title: "Diagnostic Request Transaction FBC LFT"
Description: "Diagnostic Request Transaction with multiple coded tests (FBC LFT), diagnostic task group and 'do not send SMS' CommunicationRequest"
Usage:  #example
* id = "20afd601-ed83-476b-8121-ae976ea8cc44"
* type = #transaction
* timestamp = "2022-04-25T16:03:13+10:00"

// Service Requests
* entry[+]
  * fullUrl = "urn:uuid:681a8919-8d91-4868-a46a-ab6877ad27ea"
  * resource = PathologyRequestFBC
  * request
    * method = #PUT
    * url = "ServiceRequest/681a8919-8d91-4868-a46a-ab6877ad27ea"
* entry[+]
  * fullUrl = "urn:uuid:3dff87af-5dac-40d5-be3d-9eaf9b3879b8"
  * resource = PathologyRequestLFT
  * request
    * method = #PUT
    * url = "ServiceRequest/3dff87af-5dac-40d5-be3d-9eaf9b3879b8"

// Request Tasks
* entry[+]
  * fullUrl = "urn:uuid:28dc34e1-4999-4786-8238-9f8f8a5b78c2"
  * resource = TaskGroupFBCLFT
  * request
    * method = #PUT
    * url = "Task/28dc34e1-4999-4786-8238-9f8f8a5b78c2"
* entry[+]
  * fullUrl = "urn:uuid:5cdc3259-e41d-461e-a5fb-8e68ed6c0c1e"
  * resource = PathologyRequestTaskFBC
  * request
    * method = #PUT
    * url = "Task/5cdc3259-e41d-461e-a5fb-8e68ed6c0c1e"
* entry[+]
  * fullUrl = "urn:uuid:1d4f3888-13b7-472d-859b-571bb7125fe2"
  * resource = PathologyRequestTaskLFT
  * request
    * method = #PUT
    * url = "Task/1d4f3888-13b7-472d-859b-571bb7125fe2"

// Consent Withdrawl
* entry[+]
  * fullUrl = "urn:uuid:880c657d-af10-4a4c-a925-dbd49075f0eb"
  * resource = ConsentWithdrawlFBCLFT
  * request
    * method = #PUT
    * url = "Consent/880c657d-af10-4a4c-a925-dbd49075f0eb"

// CommunicationRequest DoNotPerformSMS
* entry[+]
  * fullUrl = "urn:uuid:66ad4d84-f611-11ed-a1fc-d2cbed391bcf"
  * resource = CommunicationRequestDoNotPerformSMS
  * request
    * method = #PUT
    * url = "CommunicationRequest/66ad4d84-f611-11ed-a1fc-d2cbed391bcf"

// CommunicationRequest Task DoNotPerformSMS
* entry[+]
  * fullUrl = "urn:uuid:e8ed2aba-8127-47fa-b339-d9e134409f3f"
  * resource = TaskCommunicationRequestDoNotPerformSMS
  * request
    * method = #PUT
    * url = "Task/e8ed2aba-8127-47fa-b339-d9e134409f3f"

// CommunicationRequest UrgentPhone 
* entry[+]
  * fullUrl = "urn:uuid:66ad4c83-f611-11ed-a1fc-d2cbed391bcf"
  * resource = CommunicationRequestUrgentPhone
  * request
    * method = #PUT
    * url = "CommunicationRequest/66ad4c83-f611-11ed-a1fc-d2cbed391bcf"

// CommunicationRequest Task UrgentPhone
* entry[+]
  * fullUrl = "urn:uuid:509cefba-2250-449d-bfe7-ec2dd95d1e81"
  * resource = TaskCommunicationRequestUrgentPhone
  * request
    * method = #PUT
    * url = "Task/509cefba-2250-449d-bfe7-ec2dd95d1e81"

// Referenced resources
* entry[+]
  * fullUrl = "urn:uuid:1078d551-7be2-49f7-a122-c230b8757f2f"
  * resource = PatientSmith
  * request
    * method = #PUT
    * url = "Patient/1078d551-7be2-49f7-a122-c230b8757f2f"
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
