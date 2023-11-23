Instance: ServiceRequestClaimOperation
InstanceOf: OperationDefinition
Title: "Diagnostic Request Claim Operation"
Usage: #definition
* url = "http://draft.hl7.org.au/fhir/diagnostic-orders/OperationDefinition/ServiceRequestClaimOperation"
* name = "ServiceRequestClaimOperation"
* title = "Diagnostic Request Claim Operation"
* status = #active
* kind = #operation
* date = "2023-11-10"
* description = "This operation is used to claim a request based on a scanned barcode and return a group `Task`."
* code = #claim
* comment = " - It is assumed that the claiming provider is sufficiently authorised to claim a request."
* resource = #ServiceRequest
* system = false
* type = true
* instance = false
* parameter[+].name = #requisition
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The group identifier for the request, typically the barcode. If there is no match, an empty Bundle is returned."
* parameter[=].type = #Identifier
* parameter[+].name = #groupTask
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Returns the group `Task` assigned to the requesting organisation."
* parameter[=].type = #Task