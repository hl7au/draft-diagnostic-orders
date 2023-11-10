Instance: ServiceRequest-CopiesTo
InstanceOf: SearchParameter
Title: "Diagnostic Request CopiesTo SearchParameter"
Usage: #definition
* url = "http://draft.hl7.org.au/fhir/diagnostic-orders/ServiceRequestCopiesToSearchParameter"
* version = "1.0"
* name = "DiagnosticRequestCopiesToSearchParameter"
* status = #active
* description = "Search parameter for ServiceRequest by copiesTo reference"
* code = #copiesTo
* base = #ServiceRequest
* target[0] = #PractitionerRole
* target[+] = #Practitioner
* target[+] = #Device
* target[+] = #Patient
* target[+] = #RelatedPerson
* target[+] = #Organization
* target[+] = #Location
* target[+] = #HealthcareService
* target[+] = #CareTeam
* target[+] = #Endpoint
* type = #reference
* expression = "ServiceRequest.extension('http://hl7.org.au/fhir/StructureDefinition/result-copies-to').value"
